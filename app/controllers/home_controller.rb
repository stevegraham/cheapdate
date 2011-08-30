class HomeController < ApplicationController
  def index
    @capability_token = Twilio::CapabilityToken.create allow_outgoing: Settings.twilio.app_sid
    @recent_calls     = Twilio::Call.all page_size: 10
  end
end
