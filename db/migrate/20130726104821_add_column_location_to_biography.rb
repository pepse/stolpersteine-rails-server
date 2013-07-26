class AddColumnLocationToBiography < ActiveRecord::Migration
  def change
	add_column :biographies, :location_id, :integer
  end
end
