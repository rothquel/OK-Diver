class DiveSite < ApplicationRecord
  has_many :logs
  has_many :reviews
  has_one_attached :photo
end
