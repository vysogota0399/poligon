class AddColumnsToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :state, :integer, null: false, default: 0
    add_column :posts, :draft, :boolean, null: false, default: false
    add_column :posts, :publish_date, :datetime
  end
end
