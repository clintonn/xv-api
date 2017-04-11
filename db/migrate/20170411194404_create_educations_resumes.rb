class CreateEducationsResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :educations_resumes do |t|
      t.integer :education_id
      t.integer :resume_id

      t.timestamps
    end
    drop_table :educations_users
  end
end
