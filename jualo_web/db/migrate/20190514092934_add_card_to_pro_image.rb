class AddCardToProImage < ActiveRecord::Migration[5.2]
  def change
    add_column :pro_images, :is_card, :boolean
  end
end
