class TransactionPointsSerializer < ActiveModel::Serializer
  attributes :pointsonly, 

  def pointsonly
    self.object.points
  end
  has_many :payers

end
