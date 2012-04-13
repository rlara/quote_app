class Quote < ActiveRecord::Base
  validates :name,  :presence => true, :uniqueness => true
  validates :description, :length => { :maximum => 250 }
  validates :costperhour,  :presence => true, :numericality => true
  has_many :cases, :dependent => :destroy
  accepts_nested_attributes_for :cases
  

end

