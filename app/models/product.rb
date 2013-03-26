class Product < ActiveRecord::Base
  attr_accessible :product_name, :description, :url

  validates :description, presence:true
  validates :url, presence:true
  validates :product_name, presence:true
end
