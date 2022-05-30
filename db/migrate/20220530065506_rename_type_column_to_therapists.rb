class RenameTypeColumnToTherapists < ActiveRecord::Migration[6.1]
  def change
    rename_column :therapists, :type, :girl_type
  end
end
