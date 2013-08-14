class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :cAbbrv
      t.string :city
      t.string :address
      t.string :brand
      t.string :phone
      t.string :link
      t.string :sfdc_name
      t.string :fb
      t.string :twitter
      t.string :timezone

      t.timestamps
    end
  end
end
