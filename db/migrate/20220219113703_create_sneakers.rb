class CreateSneakers < ActiveRecord::Migration[7.0]
  def change
    create_table :sneakers do |t|
      t.string :name
      t.string :model
      t.text :description
      t.decimal :price, default: 0.00, precision: 10, scale: 2
      t.text :image
      t.string :slug, index: { unique: true }

      t.timestamps
    end
  end
end
