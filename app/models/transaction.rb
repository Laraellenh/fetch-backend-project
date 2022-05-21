class Transaction < ApplicationRecord
  belongs_to :payer
  belongs_to :user

  #  validates :points, numericality: {greater_than_or_equal_to: 0}

  def payername
    payer1 = self.payer
    namey= payer1.name
    {payer: namey, points: points, created_at: created_at }
  end
  def self.all_payers
    self.all.map{|p|p.payername}
  end

  def self.points_call
    all_points = self.all.pluck(:points).sum
    {points: all_points}
  end
  # def just_points_call
  #   n = self.points
  #   # grab the total points from the hash, then subtract them from the payers and return the hash with payer:name, points:points}
  #   self.points_call
  # end

   
end
