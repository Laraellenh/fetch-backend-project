class PayerSerializer < ActiveModel::Serializer
  attributes :name, :gimmepoints, :created_at

  has_many :transactions

  def gimmepoints
    Transaction.object.points
  end
end
