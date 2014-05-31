class TweetsController < ApplicationController
  def index
    client = TwitterClient.client
    @tweets = client.home_timeline
  end
end
