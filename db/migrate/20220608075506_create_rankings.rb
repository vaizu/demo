class CreateRankings < ActiveRecord::Migration[6.1]
  def change
    create_table :rankings do |t|
      t.string :title
      t.string :first
      t.string :second
      t.string :third
      t.string :fourth
      t.string :fifth

      t.timestamps
    end
  end
end
