class CreateWidgets < ActiveRecord::Migration[6.1]
  def change
    create_table :widgets do |t|
      t.boolean :location
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
