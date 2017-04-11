class DropEducationsResumes < ActiveRecord::Migration[5.0]
  def change
    drop_table :educations_resumes
    add_column :educations, :resume_id, :integer
  end
end
