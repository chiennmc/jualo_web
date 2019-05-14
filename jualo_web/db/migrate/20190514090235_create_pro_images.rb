class CreateProImages < ActiveRecord::Migration[5.2]
  def change
    create_table :pro_images do |t|
      t.string :image
      t.references :pro_detail, foreign_key: true

      t.timestamps
    end
  end
end
