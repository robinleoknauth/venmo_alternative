class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :group
  
  validates :amount, numericality: { only_integer: true, greater_than: 0 }
  validates :description, length: { minimum: 3, maximum: 140 }
  
  # def amount
  #   self.pennies / 100.0
  # end
end
