class DiveSite < ApplicationRecord
  has_many :logs
  has_many :reviews

  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # TAGS
  has_many :dive_site_tags, dependent: :destroy
  has_many :tags, through: :dive_site_tags

  # Array to define content of level # Cap = constante
  PROFICIENCY = %w[Beginner Intermediate Advanced Professional]
  # Array to define options of dive type # Cap = constante
  TYPE = %w[Reef\ diving Wall\ diving Wreck\ diving Cave\ diving Night\ diving Drift\ diving Freshwater]
  # Array to define options of TAGS # Cap = constante
  TAGS = %w[
    Underwater\ fauna
    Underwater\ flora
    Phytoplankton
    Red\ algae
    Kelp
    Seagrass
    Sargassum
    Sharks
    Ship's\ wreck
    Barrier\ Reef
    Pipefish
    Lionfish
    Ghost\ Pipefish
    Seahorse
    Comet\ Goldfish
    ]
  # Array to define options of TAGS # Cap = constante

  # favoritable
  acts_as_favoritable

  # Scope
  def average_rating
    reviews.average(:rating).to_i || 0
  end

end
