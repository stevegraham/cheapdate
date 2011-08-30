class TwilioController < ApplicationController
  skip_before_filter :authenticate
end
