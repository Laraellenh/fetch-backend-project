class User < ApplicationRecord
    has_many :transactions
    has_many :payers, through: :transactions
    # validates :transactions.points, numericality: {greater_than_or_equal_to: 0}
   
end
