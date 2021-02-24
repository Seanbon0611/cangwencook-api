class ActiveCampaignController < ApplicationController

  def new_contact
    http = HTTParty.post("#{Rails.application.credentials.activecampaign[:url]}/api/3/contacts", headers: {"Api-Token" => "#{Rails.application.credentials.activecampaign[:key]}"}, body: {contact: {email: params[:email]}}.to_json)
    render json: {response: http}
  end

  def all_contacts
    http = HTTParty.get("#{Rails.application.credentials.activecampaign[:url]}/api/3/contacts", headers: {"Api-Token" => "#{Rails.application.credentials.activecampaign[:key]}"})
    render json: {contacts: http}
  end

  private
  def active_campaign_params
    params.permit(:id, :contact, :email, :first_name, :last_name, :phone)
  end
end