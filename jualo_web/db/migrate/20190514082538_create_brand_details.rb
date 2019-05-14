class CreateBrandDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :brand_details do |t|
      t.references :brand, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
