class AddFieldToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nenhuma, :boolean
    add_column :users, :idoso, :boolean
    add_column :users, :asma, :boolean
    add_column :users, :cancer, :boolean
    add_column :users, :diabetico, :boolean
    add_column :users, :doe_cardio, :boolean
    add_column :users, :hipertensao, :boolean
    add_column :users, :fumante, :boolean
    add_column :users, :gestante, :boolean
    add_column :users, :obesidade, :boolean
    add_column :users, :idade, :integer

  end
end
