class BankAccount
    attr_reader :name
    attr_accessor :status, :balance
    def initialize(name)
        @name = name
        @status = "open"
        @balance = 1000
    end
    def deposit(account)
        @balance = @balance + account
    end
    def display_balance
        @balance
        return "Your balance is $#{@balance}."
    end
    def valid?
        if @status == "open" && @balance > 0
            return true
        else
            return false
        end
    end
    def close_account
        @status = "closed"
    end
end
