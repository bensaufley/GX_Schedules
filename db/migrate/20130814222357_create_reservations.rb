class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :gx_class_set_id
      t.integer :member_id
      t.integer :member_email

      t.timestamps
    end
    add_index :reservations, :gx_class_set_id
    add_index :reservations, :member_id
  end
end
