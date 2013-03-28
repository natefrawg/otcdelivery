class Product < ActiveRecord::Base
  attr_accessible :product_name, :image, :description, :url, :image_file_name
  has_attached_file :image, styles: { medium: "320x240>" }

  validates :product_name, presence:true
  validates :description, presence:true
  validates :url, presence:true
  validates_attachment :image, presence: true, 
  														content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif' ]},
  														size: { less_than: 5.megabytes }


end
