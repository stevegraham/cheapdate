# CheapDate

CheapDate is a Rails app you can use to call anywhere in the world from your browser, for the price of Twilio's LOW, LOW international rates.

# Why?

Well, I'm based in London and working for Twilio as a Developer Evangelist I'm required to make regular trips abroad. When I'm away the ol' lady likes to speak with me on the phone, this is expensive and Twilio's rates are > an order of magnitude cheaper than my cell phone plan.

P.S Twilio is hiring. It's an awesome place to work. [Come join us!](http://www.twilio.com/company/jobs)

# Setup

cp config/application.yml.example config/application.yml and change the values to those of your own

<pre>
defaults: &defaults
  twilio:
    account_sid: ACXXXXXXXXXXXXXXXXXXXXXXXX
    auth_token:  XXXXXXXXXXXXXXXXXXXXXXXXXX
    app_sid:     APXXXXXXXXXXXXXXXXXXXXXXXX
  user:
    email:       you@example.com
    password:    password123
    caller_id:   '+12125551234'

development:
  <<: *defaults
production:
  <<: *defaults
</pre>

Add and commit that file, then deploy (I use heroku because it's easy and it's free).

&copy; 2011 Stevie Graham
