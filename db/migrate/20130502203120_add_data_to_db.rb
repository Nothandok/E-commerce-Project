class AddDataToDb < ActiveRecord::Migration
  def self.up
Product.delete_all
Product.create(:prod_id => 10210, :product_name => 'Black Nikey Sneakers',
:prod_decription =>
%{<p>
Black nikey sneakers, available sizes 4,5,6,7.
</p>},
:prod_price => 1999.99,
:prod_image => '/images/shoe2.jpg')

Product.create(:prod_id => 10212, :product_name => 'Pink Nikey Sneakers',
:prod_decription =>
%{<p>
Pink nikey sneakers, available sizes 3,4,5,6,7.
</p>},
:prod_price => 1999.99,
:prod_image => '/images/shoe3.jpg')

Product.create(:prod_id => 10302, :product_name => 'Pencil heels',
:prod_decription =>
%{<p>
Red pencil heel shoes, available sizes 3,4,5,6,7.
</p>},
:prod_price => 250.99,
:prod_image => '/images/shoe4.jpg')
# . . .
end
def self.down
Product.delete_all
end
end
