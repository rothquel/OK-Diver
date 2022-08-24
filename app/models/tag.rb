class Tag < ApplicationRecord
  has_many :dive_site_tags, dependent: destroy
end
