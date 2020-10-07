class CreateJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :journals do |t|
      t.integer :user_id
      t.integer :trail_id
      t.string :date_of_run
      t.string :imgMedium
      t.string :name
      t.decimal :length
      t.string :difficulty
      t.decimal :latitude
      t.decimal :longitude
      t.decimal :stars
      t.integer :starVotes
      t.string :conditionDetails
      t.string :conditionStatus
      t.boolean :t_shirt, default: false
      t.boolean :shorts, default: false
      t.boolean :pants, default: false
      t.boolean :hat, default: false
      t.boolean :jacket, default: false
      t.boolean :gloves, default: false
      t.boolean :shoes, default: false
      t.boolean :socks, default: false
      t.boolean :map, default: false
      t.boolean :watch, default: false
      t.boolean :cellphone, default: false
      t.boolean :food, default: false
      t.boolean :running_pack, default: false
      t.boolean :water, default: false
      t.boolean :first_aid_pack, default: false
      t.boolean :sunscreen, default: false
      t.boolean :bugspray, default: false

      t.timestamps
    end
  end
end
