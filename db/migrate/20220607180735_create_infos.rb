class CreateInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :infos do |t|
      t.string :infotitle
      t.string :infolink

      t.timestamps
    end
  end
end
