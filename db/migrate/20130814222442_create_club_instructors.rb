class CreateClubInstructors < ActiveRecord::Migration
  def change
    create_table :club_instructors do |t|
      t.integer :club_id
      t.integer :instructor_id

      t.timestamps
    end
    add_index :club_instructors, :instructor_id
    add_index :club_instructors, :club_id
  end
end
