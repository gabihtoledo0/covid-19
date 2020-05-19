class AddFieldToUser2 < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :idadee, :integer
  end
end
