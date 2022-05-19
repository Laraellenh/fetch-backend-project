class PayerSerializer < ActiveModel::Serializer
  attributes :name, :points

  has_many :transactions
end
