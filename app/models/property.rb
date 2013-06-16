class Property < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :location, :name, :price, :status, :assets_attributes ,:asset,:quantity
  
  has_many :assets
  accepts_nested_attributes_for :assets, :allow_destroy => true   
end
