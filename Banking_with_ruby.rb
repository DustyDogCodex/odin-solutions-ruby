class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name,balance=100)
    @name = name
    @balance = balance
  end

  private
  def pin
    @pin = 1234
  end

  private
  def pin_error
    return "Access denied: incorrect PIN."
  end 

  public
  def display_balance(pin_number)
    if pin_number == @pin
      puts "Balance: $#{@balance}"
    end
  end

  public
  def withdraw(pin_number,amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end

  public
  def deposit(pin_number,amount)
    if pin_number == pin
      @balance += amount
      puts "Deposited #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end

end

checking_account = Account.new("Varun's Balla Money",1_000_000_000)
checking_account.withdraw(1234,50)
checking_account.deposit(1234,100_000_000)

savings_account = Account.new("Varun's Balla Money for a secured financial future",1_000_000_000)
savings_account.withdraw(1234,100_000)
savings_account.deposit(1234,250_000_000)