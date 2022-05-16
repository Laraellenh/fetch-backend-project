class User < ApplicationRecord

    has_many :payees
    has_many :points, through: :payees
end
