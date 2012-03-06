class Quote < ActiveRecord::Base
  validates :name,  :presence => true
  has_many :cases
  accepts_nested_attributes_for :cases, :reject_if => lambda { |a| a[:conntent].blank? }
  

end

