class TwitterClient
  def self.client
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.secrets.twitter_api_token
      config.consumer_secret     = Rails.application.secrets.twitter_api_secret
      config.access_token        = Rails.application.secrets.twitter_access_token
      config.access_token_secret = Rails.application.secrets.twitter_access_token_secret
    end
  end
end
