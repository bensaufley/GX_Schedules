class MoveReservationAssociations < ActiveRecord::Migration
  def change
    rename_column :reservations, :gx_class_set_id, :instance_id
  end
end
