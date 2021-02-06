class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
    	t.string :owner
      t.string :address
      t.integer :rooms, default: 0
      t.integer :sqmt, default: 0
      t.integer :floors, default: 0
      t.integer :units, default: 0
      t.integer :shops, default: 0
      t.decimal :price, default: 0
      t.decimal :parking, default: 0
      t.boolean :air_cond, default: false
      t.string :type
      t.timestamps
    end
  end
end
