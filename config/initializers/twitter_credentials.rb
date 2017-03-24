require 'twitter'

=begin

http://synaptian.com/2013/10/using-the-twitter-gem-in-your-rails-application/

This file is specifically named twitter_credentials bc Twitter gem itself contains an initializer with the same filename and that will cause the application to crash in production mode.

=end

twitter = Twitter::REST::Client.new do |config|
	config.consumer_key =        ENV['CONSUMER_KEY']
	config.consumer_secret =     ENV['CONSUMER_SECRET']
	config.access_token =        ENV['ACCESS_TOKEN']
	config.access_token_secret = ENV['ACCESS_SECRET']
end