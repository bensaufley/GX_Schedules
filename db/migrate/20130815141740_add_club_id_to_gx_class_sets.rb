class AddClubIdToGxClassSets < ActiveRecord::Migration
  def change
    add_column :gx_class_sets, :club_id, :integer
  end
end
