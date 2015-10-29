class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.string :author
      t.text :body
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
