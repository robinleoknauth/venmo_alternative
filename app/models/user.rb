class User < ApplicationRecord
  has_many :links
  has_many :groups, through: :links
  has_many :payments, dependent: :destroy
  
  validates :name, presence: true, length: { minimum: 2 }
  validates :nickname, presence: true, uniqueness: true
  
  def balance group:nil
    if group
      group = Group.find_by_name(group) if group.class == String
      self.payments.where(group: group).sum('amount')
    else
      self.payments.sum('amount')
    end
  end
end