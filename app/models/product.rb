class Product < ActiveRecord::Base
  attr_accessible :product_name, :description, :url

  validates :product_name, presence:true
  validates :description, presence:true
  validates :url, presence:true

end
