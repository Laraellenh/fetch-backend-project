class TransactionSerializer < ActiveModel::Serializer
  attributes :points, :user.name, :payee.name, :created_at


end
