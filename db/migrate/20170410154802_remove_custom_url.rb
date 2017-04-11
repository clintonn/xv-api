class RemoveCustomUrl < ActiveRecord::Migration[5.0]
  def change
    remove_column :resumes, :custom_url
    add_column :work_points, :work_id, :integer
    remove_column :work_points, :job_id
  end
end
