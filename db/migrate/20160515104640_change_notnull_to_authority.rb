class ChangeNotnullToAuthority < ActiveRecord::Migration
  def up
    change_column_null :users, :authority, false
    change_column_default :users, :authority, 0
  end
end
