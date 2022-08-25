class DiveSiteTag < ApplicationRecord
  belongs_to :dive_site

  belongs_to :tag
  validates :tag, uniqueness: { scope: :dive_site, message: 'already taken' }
end
