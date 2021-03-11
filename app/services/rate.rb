class Rate
    String @currency
    String @code
    Float @mid = 0
    def inotialize()
    end
    # def initialize(currency, code, mid)
    #     @currency = currency
    #     @code = code
    #     @mid = mid
    # end
    attr_reader :currency, :code, :mid
    attr_writer :currency, :code, :mid

    def to_s
        "#{@currency} \t #{@code} \t #{@mid}"
    end
end	