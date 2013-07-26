class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :bezirk
      t.string :ortsteil
      t.string :adresse

      t.timestamps
    end
  end
end
