# == Schema Information
#
# Table name: cases
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  code        :integer
#  design      :integer
#  base        :boolean
#  quote_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#  tipe        :string(255)
#  total_hours :integer
#

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
  
  before_save :calculate_total_hours
  
  def calculate_total_hours
    self.total_hours = self.design + self.code
  end
end
