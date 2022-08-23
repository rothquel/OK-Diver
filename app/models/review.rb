class Review < ApplicationRecord
  belongs_to :dive_site
  belongs_to :user

end
