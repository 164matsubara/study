class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.references :user, index: true, foreign_key: true
      t.string :content
      t.string :video

      t.timestamps null: false
    end
  end
end
