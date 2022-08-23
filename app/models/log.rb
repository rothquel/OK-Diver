class Log < ApplicationRecord
  belongs_to :user
  belongs_to :dive_site
  has_one_attached :photo
end
