class UserSerializer < ActiveModel::Serializer
  attributes :name, :points

  has_many :transactions
  has_many :payers, through: :transactions

  def transaction
    object.transaction.points
  end
end
