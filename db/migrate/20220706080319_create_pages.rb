class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.boolean :home
      t.boolean :attendance
      t.boolean :therapist
      t.boolean :price
      t.boolean :event
      t.boolean :access
      t.boolean :recruitment
      t.boolean :diary
      t.boolean :movie
      t.boolean :ranking
      t.boolean :reserve
      t.boolean :mail
      t.boolean :inquiry
      t.boolean :link
      t.boolean :privacy

      t.timestamps
    end
  end
end
