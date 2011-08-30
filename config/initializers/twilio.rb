Twilio::Config.setup do
  account_sid Settings.twilio.account_sid
  auth_token  Settings.twilio.auth_token
end
