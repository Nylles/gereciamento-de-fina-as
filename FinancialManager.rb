
class FinancialManager
    def initialize
      @transactions = []
    end
  
    def add_transaction(amount, category)
     date = Time.now.strftime("%Y-%m-%d" " - " "%H:%M,%S")
      transaction = Transaction.new(amount, category, date)
      @transactions << transaction
    end

   def get_total_balance
    calculate_balance
   end

  def list_transactions
    print_transactions
  end

    private

    def calculate_balance
      balance = 0
      @transactions.each do |transaction|
        balance += transaction.amount
      end
      balance
    end
  
    def print_transactions
      @transactions.each do |transaction|
        display_transactions(transaction) 
      end
    end

    def display_transactions(transaction)
      puts "Amount: #{transaction.amount} | Category: #{transaction.category} | Date: #{transaction.date}"
  end
end


