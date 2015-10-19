class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :start_time
      t.date :end_time
      t.string :status
      t.decimal :price
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :listing, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
