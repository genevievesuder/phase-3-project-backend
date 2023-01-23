class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :beds
      t.boolean :kitchenette?
  

      t.timestamps
    end
  end
end
