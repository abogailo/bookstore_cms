class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.text :description
      t.integer :author_id #foreign key
      t.integer :quantity
      t.string :condition 
      t.float :price #foreign key
      t.integer :year_published

      t.timestamps
    end
  end
end
