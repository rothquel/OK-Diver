class DiveSiteTag < ApplicationRecord
  # belongs_to :dive_site_tags wtf???
  belongs_to :tag
  validates :tag, uniqueness: { scope: :prisoner, message: 'already taken' }
end
