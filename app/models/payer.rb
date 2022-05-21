class Payer < ApplicationRecord
    has_many :transactions 
    has_many :users, through: :transactions
  
    def balance 
        total = self.transactions.all.pluck(:points).sum
         {name: self.name, points: total, created_at: created_at}
    end
    def self.total_balance
        self.all.map{|p|p.balance}
    end
end
