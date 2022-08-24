class Log < ApplicationRecord
  belongs_to :user
  belongs_to :dive_site
  has_one_attached :photo

  validates :date, presence: true
  validates :depth, presence: true
  validates :time_in, presence: true
  validates :time_out, presence: true
end
