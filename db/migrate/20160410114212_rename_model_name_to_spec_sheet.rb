class RenameModelNameToSpecSheet < ActiveRecord::Migration
  def up 
    rename_column :spec_sheets, :model_name, :name
  end
  
  def down
    rename_column :spec_sheets, :name, :model_name
  end
end
