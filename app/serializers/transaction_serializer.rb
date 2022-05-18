class TransactionSerializer < ActiveModel::Serializer
  attributes :points, :user_id, :payee_id, :timestamp

  belongs_to :user
  belongs_to :payee
end
