class AddSpecToProDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :pro_details, :pro_spec, foreign_key: true
  end
end
