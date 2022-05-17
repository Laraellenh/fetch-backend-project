class User < ApplicationRecord

    has_many :payers
    has_many :transactions, through: :payers

 
    def remaining_balance
    end
end
