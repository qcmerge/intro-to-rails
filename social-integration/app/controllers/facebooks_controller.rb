class FacebooksController < ApplicationController
  def index
    client = FacebookClient.client
    @facebooks = client.get_connections("me", "feed")
  end
end
