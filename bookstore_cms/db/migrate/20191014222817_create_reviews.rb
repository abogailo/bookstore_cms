class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :book_id #foreign key
      t.integer :rating
      t.text  :review

      t.timestamps
    end
  end
end
