class CreateSns < ActiveRecord::Migration[6.1]
  def change
    create_table :sns do |t|
      t.string :customers_line
      t.boolean :line_reserve
      t.string :recruiting_line
      t.string :twitter
      t.string :blog

      t.timestamps
    end
  end
end
