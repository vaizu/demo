class AddTherapistIdToRanking < ActiveRecord::Migration[6.1]
  def change
    add_column :rankings, :therapist_id, :integer
  end
end
