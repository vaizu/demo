class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.string :login_id
      t.string :login_pass
      t.integer :customer_tel
      t.integer :recruiting_tel
      t.string :mail
      t.string :opening
      t.string :closing
      t.string :reserve
      t.string :holiday
      t.string :nearest
      t.string :address
      t.boolean :business_trip
      t.string :cast_ja
      t.string :cast_en

      t.timestamps
    end
  end
end
