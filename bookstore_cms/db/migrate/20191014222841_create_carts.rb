class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.name
      t.user_id #foreign key
      
      t.timestamps
    end
  end
end
