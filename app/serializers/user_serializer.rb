class UserSerializer < ActiveModel::Serializer
  attributes :name, :points

  def transactions
     self.object.transactions.points
  end
 
end
