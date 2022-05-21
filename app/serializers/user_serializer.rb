class UserSerializer < ActiveModel::Serializer
  attributes :name, :points

  has_many :transactions
  # def points
  #    Transaction.object.all.points
  # end
 
end
