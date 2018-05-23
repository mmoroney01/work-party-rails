class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :description, null: false
      t.string :guest_name, null: false
      t.string :phone_number, null: false
      t.integer :party_id, null: false

      t.timestamps
    end
  end
end
