class CreateClubUsers < ActiveRecord::Migration
  def change
    create_table :club_users do |t|
      t.club_id :integer
      t.user_id :integer

      t.timestamps
    end
  end
end
