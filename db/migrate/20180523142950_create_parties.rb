class CreateParties < ActiveRecord::Migration[5.1]
  def change
    create_table :parties do |t|
      t.time :time, null: false
      t.string :place, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
