class CreateKitabs < ActiveRecord::Migration[5.1]
  def change
    create_table :kitabs do |t|
      t.string :name
      t.text :description
      t.integer :cost
      t.timestamps
    end
  end
end
