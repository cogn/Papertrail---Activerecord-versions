class Product < ActiveRecord::Base

  attr_accessible :name, :price, :available, :description
  scope :available, :conditions => { :available => true }
  validates :name,:description,:price, :presence => true
  validates_numericality_of :price
    has_paper_trail
end
