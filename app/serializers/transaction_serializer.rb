class TransactionSerializer < ActiveModel::Serializer
  attributes  :namePayer, :points, :created_at

  has_many :payers
  def namePayer
    Payer.object.name
  end
end
