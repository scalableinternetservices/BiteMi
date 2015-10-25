class CreateProductPhotos < ActiveRecord::Migration
  def change
    create_table :product_photos do |t|
      t.string :description
      t.belongs_to :listing, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_attachment :product_photos, :picture
  end
end
