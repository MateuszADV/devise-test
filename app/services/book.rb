class Book
    def initialize(title, author, pages, year)
      @title = title 
      @author = author 
      @pages = pages 
      @year = year
    end

    attr_reader :title, :author, :pages, :year
    attr_writer :title, :author, :pages, :year		
    def to_s
      "Book: #{@title}, #{@author}, #{@pages}, #{@year}."
    end	
  end	