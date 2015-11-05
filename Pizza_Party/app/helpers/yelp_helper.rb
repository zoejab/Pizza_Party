module YelpHelper

client = Yelp::Client.new({ consumer_key: ENV['YELP_API_KEY'],
                            consumer_secret: ENV['YELP_API_SECRET'],
                            token: ENV['YELP_API_TOKEN'],
                            token_secret: ENV['YELP_API_TOKEN_SECRET']
                          })

    def search
      Yelp.client.search('San Francisco')
    end
end
