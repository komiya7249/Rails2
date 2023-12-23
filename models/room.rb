class Room < ApplicationRecord
  mount_uploader :img, ImageUploader
  validates :name, presence:true
  validates :introduction, presence:true
  validates :price, presence:true, numericality: {greater_than_or_equal_to:1}
  validates :address, presence:true
  
  belongs_to :user
  has_many :reservations
end

