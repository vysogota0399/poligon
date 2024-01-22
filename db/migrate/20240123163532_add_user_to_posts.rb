class AddUserToPosts < ActiveRecord::Migration[7.1]
  def change
    add_reference :posts, :user, null: true
    add_foreign_key :posts, :users, on_delete: :cascade
  end
end
