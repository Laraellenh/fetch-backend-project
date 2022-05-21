class User < ApplicationRecord
    has_many :transactions
    has_many :payers, through: :transactions
    
    def user_balance 
        
        total = self.transactions.all.pluck(:points).sum
            if total <=0
                total == 0
            else
              total = total
            end
         {name: self.name, points: total}
    
    end
  
end
