class AddReferencesToDiveSiteTags < ActiveRecord::Migration[7.0]
  def change
    add_reference :dive_site_tags, :dive_site, null: false, foreign_key: true
    add_reference :dive_site_tags, :tag, null: false, foreign_key: true
  end
end
