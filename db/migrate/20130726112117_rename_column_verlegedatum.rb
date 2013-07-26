class RenameColumnVerlegedatum < ActiveRecord::Migration
  def change
	rename_column :biographies, :verlegerdatum, :verlegedatum
  end
end
