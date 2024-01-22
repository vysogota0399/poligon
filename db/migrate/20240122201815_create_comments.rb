class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :message
      t.belongs_to :post
      t.timestamps
    end

    add_foreign_key :comments, :posts, on_delete: :cascade
  end
end
