class UserSerializer < ActiveModel::Serializer
  attributes :name, :transaction

  has_many :transactions

  def transaction
    object.transaction.points
  end
end
