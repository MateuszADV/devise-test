class Exchange
    def initialize(table, no, effectiveDate)
        @table = table
        @no = no
        @effectiveDate = effectiveDate
    end
    attr_reader :table, :no, :effectiveDate
    attr_writer :table, :no, :effectiveDate

    def to_s
        "Exchange: #{@table}, #{@no}, #{@effectiveDate}."
    end
end	