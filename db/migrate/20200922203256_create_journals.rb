class CreateJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :journals do |t|
      t.integer :user_id
      t.integer :trail_id
      t.string :date_of_run

      t.timestamps
    end
  end
end
