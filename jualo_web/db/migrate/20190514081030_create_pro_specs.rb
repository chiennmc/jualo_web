class CreateProSpecs < ActiveRecord::Migration[5.2]
  def change
    create_table :pro_specs do |t|
      t.string :name
      t.string :transmission
      t.integer :kilometer
      t.string :color
      t.integer :year
      t.integer :cc
      t.string :fuel

      t.timestamps
    end
  end
end
