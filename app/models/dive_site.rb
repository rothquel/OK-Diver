class DiveSite < ApplicationRecord
  has_many :logs
  has_many :reviews
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
