class Group < ApplicationRecord
    has_many :links
    has_many :users, through: :links
    has_many :payments, dependent: :destroy
    
    validates :name, presence: true, length: { minimum: 2 }, uniqueness: true
    
    def balance user:nil
        if user
            user = User.find_by_name(user) if user.class == String
            self.payments.where(user: user).sum('amount')
        else
            self.payments.sum('amount')
        end
    end
end
