class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.date :date
      t.float :subtotal
      t.float :tax
      t.float :total
      t.integer :customer_id
      t.string :company_id

      t.timestamps
    end
  end
end
