class AddOccupationColumnToBiography < ActiveRecord::Migration
  def change
  	add_column :biographies, :occupation, :string
  end
end
