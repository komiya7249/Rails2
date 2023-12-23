class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :img, ImageUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  validates :name, presence: true,  on: :create
  validates :email, presence: true, uniqueness: true, on: :create
  validates :password, presence: true, on: :create
  validates :password_confirmation, presence: true,  on: :create

  has_many :rooms
  has_many :reservations

end
