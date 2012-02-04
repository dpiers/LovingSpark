class CreateSparks < ActiveRecord::Migration
  def change
    create_table :sparks do |t|
      t.string :name
      t.string :description
      t.integer :points
      t.boolean :completed

      t.timestamps
    end
  end
end
