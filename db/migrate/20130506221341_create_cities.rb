class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.text :content
      t.string :url

      t.timestamps
    end
  end
end
