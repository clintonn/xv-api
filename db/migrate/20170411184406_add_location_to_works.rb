class AddLocationToWorks < ActiveRecord::Migration[5.0]
  def change
    add_column :works, :city, :string
    add_column :works, :state, :string
  end
end
