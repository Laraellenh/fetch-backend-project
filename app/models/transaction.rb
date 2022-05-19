class Transaction < ApplicationRecord
  belongs_to :payer
  belongs_to :user

   validates :points, numericality: {greater_than_or_equal_to: 0}
 
  def payername
    payer1 = self.payer
   namey= payer1.name
   {payer: namey, points: points, created_at: created_at }
  end


  def self.names
 
  end
   
end
