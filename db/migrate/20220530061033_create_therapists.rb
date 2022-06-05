class CreateTherapists < ActiveRecord::Migration[6.1]
  def change
    create_table :therapists do |t|
      t.string :name
      t.string :type
      t.integer :age
      t.integer :height
      t.string :cup
      t.integer :bust
      t.integer :waist
      t.integer :hips
      t.string :catch_copy
      t.string :twitter_url
      t.string :diary
      t.text :therapist_message
      t.text :shop_message

      t.timestamps
    end
  end
end
