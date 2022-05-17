class TransactionsSerializer < ActiveModel::Serializer
  attributes :points, :user_id, :payee_id, :created_at

  belongs_to :user
  belongs_to :payee
end
