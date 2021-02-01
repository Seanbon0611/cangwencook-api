class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates :password, length: { in: 6..20 }
  validates :first_name, 
            presence: true
  validates :last_name, 
  presence: true
  validates :email,
            format: { with: URI::MailTo::EMAIL_REGEXP },
            presence: true,
            uniqueness: { case_sensitive: false }


  def generate_password_token!
    begin
      self.reset_password_token = SecureRandom.urlsafe_base64
    end while User.exists?(reset_password_token: self.reset_password_token)
    self.reset_password_token_expires_at = 2.hours.from_now
    save!
  end

  def clear_password_token!
    self.reset_password_token = nil
    self.reset_password_token_expires_at = nil
    save!
  end

end