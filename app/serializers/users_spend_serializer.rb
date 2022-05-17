class UsersSpendSerializer < ActiveModel::Serializer
  attributes :user, :points
  belongs_to: payee
end
