class User < ApplicationRecord
    has_many :transactions
    has_many :payers, through: :transactions
   
    total = self.transactions.all.pluck(:points).sum
    def balance 
     
         {name: self.name, points: total}
    end
    def spend_old_points 
        # get all user transactions and map them for oldest created at date
        # order ascending
        inorder=  self.transactions.all.order(:created_at)

        # if user wants to spend, use oldest points
        new_purchase = self.total -
    end
end
