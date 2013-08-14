class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.cAbbrv :string
      t.city :string
      t.address :string
      t.brand :string
      t.phone :string
      t.link :string
      t.sfdc_name :string
      t.fb :string
      t.twitter :string
      t.timezone :string

      t.timestamps
    end
  end
end
