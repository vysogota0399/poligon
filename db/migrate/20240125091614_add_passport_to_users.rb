class AddPassportToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :passport, :json
  end
end
