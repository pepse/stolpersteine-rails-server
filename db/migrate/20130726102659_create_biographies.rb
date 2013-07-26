class CreateBiographies < ActiveRecord::Migration
  def change
    create_table :biographies do |t|
      t.string :name
      t.string :adress
      t.string :geburtsname
      t.datetime :verlegerdatum
      t.datetime :geburtstag
      t.string :geburtsort
      t.text :biografie
      t.text :info

      t.timestamps
    end
  end
end
