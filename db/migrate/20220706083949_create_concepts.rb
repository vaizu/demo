class CreateConcepts < ActiveRecord::Migration[6.1]
  def change
    create_table :concepts do |t|
      t.text :concept

      t.timestamps
    end
  end
end
