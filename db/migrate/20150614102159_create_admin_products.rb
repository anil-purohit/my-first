class CreateAdminProducts < ActiveRecord::Migration
  def change
    create_table :admin_products do |t|
      t.string :name
      t.string :image
      t.integer :categoy
      t.decimal :mrp
      t.decimal :offer

      t.timestamps null: false
    end
  end
end
