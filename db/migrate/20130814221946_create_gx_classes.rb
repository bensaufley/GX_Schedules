class CreateGxClasses < ActiveRecord::Migration
  def change
    create_table :gx_classes do |t|
      t.string :name
      t.text :description
      t.integer :category_id

      t.timestamps
    end
    add_index :gx_classes, :category_id
  end
end
