class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :start_time
      t.date :end_time
      t.string :status
      t.decimal :price

      t.timestamps null: false
    end
  end
end
