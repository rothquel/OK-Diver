class Log < ApplicationRecord
  belongs_to :user
  belongs_to :dive_site
end
