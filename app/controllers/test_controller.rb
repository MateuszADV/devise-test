class TestController < ApplicationController
  require 'Book'
  require 'Book_with_cd'
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
  end
end
