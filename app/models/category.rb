class Category < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => {:scope => :user_id, :message => "Category already exists"}

  has_many :items
  belongs_to :user

  mount_uploader :picture1, Picture1Uploader

end
