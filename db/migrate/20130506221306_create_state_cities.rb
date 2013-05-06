class CreateStateCities < ActiveRecord::Migration
  def change
    create_table :state_cities do |t|
      t.integer :state_id
      t.integer :city_id

      t.timestamps
    end
  end
end
