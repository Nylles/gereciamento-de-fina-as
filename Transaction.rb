class Transaction
    attr_reader :amount, :category, :date
  
    def initialize(amount, category, date)
      @amount = amount
      @category = category
      @date = date
    end
  end