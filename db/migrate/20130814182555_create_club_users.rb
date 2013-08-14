class CreateClubUsers < ActiveRecord::Migration
  def change
    create_table :club_users do |t|
      t.integer :club_id
      t.integer :user_id

      t.timestamps
    end
    add_index :club_users, :club_id
    add_index :club_users, :user_id
  end
end
