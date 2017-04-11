class AddUserIdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :user_id, :integer, index: true
    add_column :works, :desc, :text
  end
end
