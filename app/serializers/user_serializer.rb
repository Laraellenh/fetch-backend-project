class UserSerializer < ActiveModel::Serializer
  attributes :name, :points

  has_many :transactions
  def points
     self.object.transactions.points
  end
 
end
