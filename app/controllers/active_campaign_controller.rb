class ActiveCampaignController < ApplicationController
  include HTTParty
  base_uri Rails.application.credentials.activecampaign[:url]
  @client = ::ActiveCampaign::Client.new(
    api_url: ,
    api_token: Rails.application.credentials.activecampaign[:key]
  )

  def new_contact
    ActiveCampaign.create_contact(
      email: params[:email]
    )
  end

  private
  def active_campaign_params
    params.permit(:id, :email, :first_name, :last_name, :phone)
  end
end