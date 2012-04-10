class Case < ActiveRecord::Base
  validates :name,  :presence => true
  validates :description,  :presence => true, :length => { :maximum => 500 }
  validates :tipe, :presence => true
  
  belongs_to :quote
end
