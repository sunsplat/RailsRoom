#voicechain.rb

require 'sinatra'
require 'twilio-ruby'
require 'quoth'

account_sid = 'AP09b028e3be006cf2ca1f5dfa02477958'
auth_token = 'dc28cd3037129446363ba1ee2fda53ef'

@client = Twilio::REST::Client.new account_sid, auth_token

get '/newcall' do
  Twilio::TwiML::Response.new do |r|
    r.Say Quoth.get, voice: 'alice'

 end.text
    end


get '/' do
  Twilio::TwiML::Response.new do |r|
     r.Say 'hello there', voice: 'alice'
     r.Dial callerId: '+14155992671' do |d|
         d.Client 'jenny'
     end.text
   end
end
