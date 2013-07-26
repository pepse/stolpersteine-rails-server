class RenameColumnAdresse < ActiveRecord::Migration
  def change
    rename_column :biographies, :adress, :adresse
  end
end
