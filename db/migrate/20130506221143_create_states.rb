class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.text :content
      t.string :url

      t.timestamps
    end
  end
end
