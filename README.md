# CheapDate

CheapDate is a Rails app you can use to call anywhere in the world from your browser, for the price of Twilio's LOW, LOW international rates.

# Why?

Well, I'm based in London and working for Twilio as a Developer Evangelist I'm required to make regular trips abroad. When I'm away the ol' lady likes to speak with me on the phone, this is expensive and Twilio's rates are > an order of magnitude cheaper than my cell phone plan.

P.S Twilio is hiring. It's an awesome place to work. [Come join us!](http://www.twilio.com/company/jobs)

# Setup
- Create a new Heroku app.
- Go to your Twilio dashboard and [create a new application](https://www.twilio.com/user/account/apps/add). Set the voice url to #{your_heroku_app_url}/twilio_handler.voice
- cp config/application.yml.example config/application.yml and change the values to those of your own

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

- Add and commit that file
- git push heroku master
- Open a browser and go to your app, enter the username and password you set in application.yml, and call the ol' lady.

# Credits

- Code by Stevie Graham
- Awesome app name by [Rob Spectre](https://github.com/robspectre)


&copy; 2011 Stevie Graham
