class CreateAddColumnToPostUserComments < ActiveRecord::Migration
  def change
      add_column :posts, :user_id, :integer, references: :users
      add_column :comments, :user_id, :integer, references: :users
      add_index :posts, :user_id
      add_index :comments, :user_id
  end
end
