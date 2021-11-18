class HomeController < ApplicationController
  require 'json'
  require 'rest-client'
  def index
   puts "%%%%%%%%%%%%%%%%%%%%%% TEST %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
   response = RestClient.get("https://www.goldapi.io/api/XAG/USD/",
                             {'x-access-token' => 'goldapi-kpcmtkw3iluo8-io'}
   )

   data = response.body
   puts data
   result = JSON.parse(data)
   rate_metal = RateMetal.new
   rate_metal.metal = result["metal"]
   rate_metal.currency = result["currency"]
    rate_metal.exchange = result['exchange']
    rate_metal.symbol = result["symbol"]
    rate_metal.prev_close_price = result["prev_close_price"]
    rate_metal.open_price = result["open_price"]
   rate_metal.low_price = result["low_price"]
   rate_metal.high_price = result["high_price"]

    puts rate_metal.to_s
   # puts JSON.parse(response, { symbolize_names: true })
  end
end
