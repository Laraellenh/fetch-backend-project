class UserSpendSerializer < ActiveModel::Serializer
  attributes :points
 

  def points
    User.transactions.points
 end
end
