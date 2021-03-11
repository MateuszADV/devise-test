class Book_With_Cd < Book
    def initialize(title, author, pages, year, size, lector)
      super(title, author, pages, year)
      @size = size
      @lector = lector
    end	
    def to_s
        super.sub('.',',')  + " #{@size}, #{@lector}."
    end	
  end	