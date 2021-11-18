class RateMetal
  String @timestamp
  String @metal
  String @currency
  String @exchange
  String @symbol
  Float @prev_close_price = 0.0
  Float @open_price = 0.0
  Float @low_price = 0.0
  Float @high_price = 0.0

  def initialize()
  end

  attr_reader :timestamp, :metal, :currency, :exchange, :symbol, :prev_close_price, :open_price, :low_price, :high_price
  attr_writer :timestamp, :metal, :currency, :exchange, :symbol, :prev_close_price, :open_price, :low_price, :high_price

  def to_s
    puts" ------------------------------------------------------------"
    printf " | %-20s | %-10s \n" ,"metal:", @metal
    printf " | %-20s | %-10s \n" ,"currency:", @currency
    printf " | %-20s | %-10s \n" ,"exchange:", @exchange
    printf " | %-20s | %-10s \n" ,"symbol:", @symbol
    printf " | %-20s | %-10s \n" ,"prev_close_price:", @prev_close_price
    printf " | %-20s | %-10s \n" ,"open_price:", @open_price
    printf " | %-20s | %-10s \n" ,"low price:", @low_price
    printf " | %-20s | %-10s \n" ,"high price:", @high_price




  end
end