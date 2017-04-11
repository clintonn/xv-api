class CreateSkillsResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :skills_resumes do |t|
      t.integer :resume_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
