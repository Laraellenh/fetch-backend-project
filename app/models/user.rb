class User < ApplicationRecord

    has_many :payees
    has_many :transactions, through: :payees

    def total_points_user

    end
    def remaining_balance
    end
end
