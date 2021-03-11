class TestController < ApplicationController
  require 'Book'
  require 'Book_with_cd'
  # require 'Exchange'
  # require 'Rate'
  require 'json'

  require 'Exchange_Rate'
  def index
    # puts "&&&&&&&&&&&&&&&&&&&&&&&&&&& TEST &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    # book_1 = Book.new("Pan Tadeusz", "Adam Mickiewicz", 200, 1834)
    # puts book_1.to_s
    # book_1.author = "Juliusz Słowacki"
    # puts book_1.to_s
    # puts "-----------------------------------------------------"
    # book_2 = Book_With_Cd.new("Krzyzac", "Sienkiewicz", 200, 1834, 150, "Wiktor Zborowski")
    # puts(book_2.inspect)
    # puts(book_2.to_s)
    # puts "&&&&&&&&&&&&&&&&&&&&&&&& END TEST &&&&&&&&&&&&&&&&&&&&&&&&&&&&&"

    # puts "=================================================================="

    # code_list = ["USD", "EUR", "CHF", "GBP"]

    # source = 'https://api.nbp.pl/api/exchangerates/tables/a/?format=json'
    # resp = Net::HTTP.get_response(URI.parse(source))
    # data = resp.body
    # result = JSON.parse(data)  
    
    # objects = result.inject()
    # rates = objects["rates"]

    
    # @rates_list = Array.new

    # rates.each do |r|
    #   rate = Rate.new
    #   rate.currency = r["currency"]
    #   rate.code = r["code"]
    #   rate.mid = r["mid"]

    #   code_list.each do |cod|
    #     if (cod == rate.code)
    #       @rates_list.push(rate)
    #     end
    #   end

    #   # printf " %-35s %-10s %-10s \n",rate.currency, rate.code, rate.mid
    #   # printf "%-20s %s\n", value_name, value
    # end

    # @exchange = Exchange.new
    # @exchange.table = objects["table"]
    # @exchange.no = objects["no"]
    # @exchange.effectiveDate = objects["effectiveDate"]
    # @exchange.rates = @rates_list

    # puts @exchange.table
    # puts @exchange.no
    # puts @exchange.effectiveDate
    # @exchange.rates.each do |r|
    #   puts r
    # end

    @exchange_rate = ExchangeRate.new
    @exchange = @exchange_rate.rate
    puts @exchange
  end

end
