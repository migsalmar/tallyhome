class Item < ActiveRecord::Base


validates :name, :presence => true, :uniqueness => true
belongs_to :category

mount_uploader :picture2, Picture2Uploader

end
