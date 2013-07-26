class AddCoordsToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :lnglat, :point, geographic: true
    add_index :locations, :lnglat, spatial: true
  end
end
