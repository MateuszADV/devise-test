class HomeController < ApplicationController
  require 'json'
  require 'rest-client'
  def index
   puts "%%%%%%%%%%%%%%%%%%%%%% TEST %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

   # response = RestClient.get("https://www.goldapi.io/api/XAG/USD/",
   #                           {'x-access-token' => 'goldapi-kpcmtkw3iluo8-io'}
   # )
   # puts response.code
   # puts response.class.name
   # data = response.body
   # puts data
   # result = JSON.parse(data)
   # rate_metal = RateMetal.new
   # rate_metal.metal = result["metal"]
   # rate_metal.currency = result["currency"]
   #  rate_metal.exchange = result['exchange']
   #  rate_metal.symbol = result["symbol"]
   #  rate_metal.prev_close_price = result["prev_close_price"]
   #  rate_metal.open_price = result["open_price"]
   # rate_metal.low_price = result["low_price"]
   # rate_metal.high_price = result["high_price"]
   #
   #  puts rate_metal.to_s
   # puts JSON.parse(response, { symbolize_names: true })
   #
   #
   #
   response = RestClient.get("https://www.goldapi.io/api/stat",
                              {'x-access-token' => 'goldapi-kpcmtkw3iluo8-io'}
    )
   data = response.body
    puts data
    result = JSON.parse(data)
    stat_gold_api = StatGoldApi.new
    stat_gold_api.today = result["requests_today"]
    stat_gold_api.yesterday = result["requests_yesterday"]
    stat_gold_api.this_month = result["requests_month"]
    stat_gold_api.last_month = result["requests_last_month"]
    puts stat_gold_api.to_s
  end
end
