class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.boolean :link_place
      t.string :banner_size
      t.string :link_code
      t.string :site_name
      t.string :site_url

      t.timestamps
    end
  end
end
