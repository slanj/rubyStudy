class CreateHotels < ActiveRecord::Migration[5.1]
  def change
    create_table :hotels do |t|
      t.string :title
      t.text :review
      t.integer :rating
      t.text :description

      t.timestamps
    end
  end
end
