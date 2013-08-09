class RemoveColumnAdresseFromBiography < ActiveRecord::Migration
  def change
  	remove_column :biographies, :adresse
  end
end
