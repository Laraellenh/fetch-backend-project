class Transaction < ApplicationRecord
  belongs_to :payee
  belongs_to :user

#  attr_accessor :user, :payee, :points

#  def initialize(user, payee, points)
#   @points = points
#   @user = user
#   @payee = payee
#  end

#   whose_points =self.points.user
#   newpoints = self.points
  
# # when a transaction occurs, the points come out of the payee and are added to the user's account'
#   def balance_add_points
#   #  determine user, add points to their account, and subtract same points from payee account

    
   
#   end

#   def oldest_points_first
#   end
 


end
