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
    # def spend
    # when user spends points, spend  created_at first
    # end
    # def spend_old_points 
    #     # get all user transactions and map them for oldest created at date
    #     # order ascending
    #     

    #     # if user wants to spend, use oldest points
    #     new_purchase = self.total -
    # end
end
