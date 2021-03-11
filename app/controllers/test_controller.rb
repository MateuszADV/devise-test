class TestController < ApplicationController
  require 'Book'
  require 'Book_with_cd'
  require 'Exchange'
  require 'Rate'
  require 'json'
  def index
    puts "&&&&&&&&&&&&&&&&&&&&&&&&&&& TEST &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    book_1 = Book.new("Pan Tadeusz", "Adam Mickiewicz", 200, 1834)
    puts book_1.to_s
    book_1.author = "Juliusz Słowacki"
    puts book_1.to_s
    puts "-----------------------------------------------------"
    book_2 = Book_With_Cd.new("Krzyzac", "Sienkiewicz", 200, 1834, 150, "Wiktor Zborowski")
    puts(book_2.inspect)
    puts(book_2.to_s)
    puts "&&&&&&&&&&&&&&&&&&&&&&&& END TEST &&&&&&&&&&&&&&&&&&&&&&&&&&&&&"

    puts "=================================================================="

    source = 'https://api.nbp.pl/api/exchangerates/tables/a/?format=json'
    resp = Net::HTTP.get_response(URI.parse(source))
    data = resp.body
    result = JSON.parse(data)  
    
   
    puts"^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts result[0].length
    objects = result.inject()
    # puts result
    rates = objects["rates"]

    puts objects["table"]
    puts objects["no"]
    puts objects["effectiveDate"]

    rates.each do |r|
      rate = Rate.new
      rate.currency = r["currency"]
      rate.code = r["code"]
      rate.mid = r["mid"]

      printf " %-35s %-10s %-10s \n",rate.currency, rate.code, rate.mid
      # printf "%-20s %s\n", value_name, value
    end
  

    # exchange = Exchange.new("A", "15874/wwegf", "2021")
    # puts exchange.to_s

    # result[0].each do |re|
    #   puts re
      
    #   re.each do |r|
    #     puts r
    #     puts r.length.to_s + " - długość"
    #   end
     
    # end
    puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

  #  resp.each do |re|
  #   puts re.inspect
  #  end
  #   puts resp
  #   # puts data

  #   exchange = JSON.parse(data, object_class: OpenStruct)
  #   puts exchange
  #   puts "()()()()()()()()()()()()()()()()"
  end

end
