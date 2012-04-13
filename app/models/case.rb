class Case < ActiveRecord::Base
  validates :name,  :presence => true
  validates :description,  :presence => true, :length => { :maximum => 500 }
  validates :tipe, :presence => true
  belongs_to :quote
  
  TIPES = ["feature","chore"]
  
  class << self
    TIPES.each do |tipe_name|
      define_method "tipe_#{tipe_name}" do
        tipe_name
      end
    end
  end
end
