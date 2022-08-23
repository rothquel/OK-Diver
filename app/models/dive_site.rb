class DiveSite < ApplicationRecord
  has_many :logs
  has_one_attached :photo
end
