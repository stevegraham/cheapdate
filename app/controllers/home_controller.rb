class HomeController < ApplicationController
  def index
    @capability_token = Twilio::CapabilityToken.create allow_outgoing: Settings.twilio.app_sid
  end
end
