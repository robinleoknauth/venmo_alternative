class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :group
  
  validates :amount, numericality: { only_integer: true, greater_than: 0 }
  validates :description, length: { minimum: 3, maximum: 140 }
  
  # def initialize args
  #   super args
  #   logger.debug @attributes["amount"].inspect
  #   logger.debug "-------"
  #   logger.debug @attributes.inspect
  #   logger.debug @new_record.inspect
  #   logger.debug @mutation_tracker.inspect
  #   logger.debug  Module.nesting                          <----
  #   logger.debug "+++++++"
  # end
end

