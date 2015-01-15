class CreateUserValues < ActiveRecord::Migration
  def change
    create_table :user_values do |t|
      t.references :user, index: true
      t.references :value, index: true
      t.integer :count

      t.timestamps null: false
    end
    add_foreign_key :user_values, :users
    add_foreign_key :user_values, :values
  end
end
