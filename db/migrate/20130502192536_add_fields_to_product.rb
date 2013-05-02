class AddFieldsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :prod_id, :integer
    add_column :products, :prod_decription, :text
    add_column :products, :prod_price, :decimal
    add_column :products, :prod_image, :string
  end
end
