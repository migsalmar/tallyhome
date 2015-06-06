class Item < ActiveRecord::Base

belongs_to :category

mount_uploader :picture2, Picture2Uploader

end
