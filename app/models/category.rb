class Category < ActiveRecord::Base

has_many :items
belongs_to :user

mount_uploader :picture1, Picture1Uploader

end
