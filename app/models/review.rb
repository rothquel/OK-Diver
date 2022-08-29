class Review < ApplicationRecord
  belongs_to :dive_site
  belongs_to :user

  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }
end
