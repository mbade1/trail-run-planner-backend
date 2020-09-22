class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.integer :hiker_project_id
      t.string :name
      t.string :summary
      t.string :difficulty
      t.string :imgMedium
      t.decimal :length
      t.decimal :ascent
      t.decimal :descent
      t.string :conditionStatus
      t.string :conditionDetails
      t.date :conditionDate
      t.datetime :date_of_run
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
