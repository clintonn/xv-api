class CreateProjectsResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :projects_resumes do |t|
      t.integer :project_id
      t.integer :resume_id

      t.timestamps
    end
  end
end
