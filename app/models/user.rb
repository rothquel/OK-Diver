class User < ApplicationRecord
  has_many :logs
  has_many :dive_sites, -> { distinct }, through: :logs
  has_many :reviews
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  # Array to define content of level # Cap = constante
  PROFICIENCY = %w[beginner intermediate professional]

  acts_as_favoritor
end
