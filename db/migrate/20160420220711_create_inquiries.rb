class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :company_name
      t.string :name
      t.string :email
      t.string :tel
      t.string :business_type
      t.string :position
      t.string :countory
      t.string :content

      t.timestamps null: false
    end
  end
end
