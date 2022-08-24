class Tag < ApplicationRecord
  has_many :dive_site_tags, dependent: destroy

  TAGS = %w[
Underwater fauna
underwater flora
phytoplankton
red algae
kelp
seagrass
sargassum
sharks
Ship's wreck
Barrier Reef
Pipefish
Lionfish
Ghost Pipefish
Seahorse
Comet Goldfish
Shark
Tuna
sea urchin
  ]
end
