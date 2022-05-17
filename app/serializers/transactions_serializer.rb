class TransactionsSerializer < ActiveModel::Serializer
  attributes :id, :points, :user_id, :payee_id

  belongs_to :user
  belongs_to :payee
end
