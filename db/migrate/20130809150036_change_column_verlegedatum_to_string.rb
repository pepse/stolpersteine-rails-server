class ChangeColumnVerlegedatumToString < ActiveRecord::Migration
  def change
  	change_column :biographies, :verlegedatum, :string
  end
end
