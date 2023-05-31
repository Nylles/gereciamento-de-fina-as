require './Transaction.rb'
require './FinancialManager.rb'

def transaction_display

  manager = FinancialManager.new

  add_transaction(manager)
  list_transactions(manager)
  display_transactions(manager)
end

def add_transaction(manager)
  manager.add_transaction(100, "Income")
  manager.add_transaction(-30, "Food")
  manager.add_transaction(-50, "Shopping")
  manager.add_transaction(20,"Bank",)
  manager.add_transaction(7,"Coca-cola")
end

def list_transactions(manager)
  manager.list_transactions
end

def display_transactions(manager)
  balance = manager.get_total_balance
  puts "Total Balance: #{balance}"
end

transaction_display







