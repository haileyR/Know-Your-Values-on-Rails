class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :user, index: true
      t.integer :friend_id
      t.boolean :status

      t.timestamps null: false
    end
    add_foreign_key :friendships, :users
  end
end
