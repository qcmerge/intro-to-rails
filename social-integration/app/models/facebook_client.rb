class FacebookClient
  def self.client
    Koala::Facebook::API.new(Rails.application.secrets.facebook_access_token)
  end
end
