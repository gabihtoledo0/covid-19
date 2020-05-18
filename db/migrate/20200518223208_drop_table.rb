class DropTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :possui_doenca
  end
end
