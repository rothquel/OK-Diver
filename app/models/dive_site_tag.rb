class DiveSiteTag < ApplicationRecord
  belongs_to :dive_site_tags
  belongs_to :Tag
  validates :tag, uniqueness: { scope: :prisoner, message: 'already taken' }
end
