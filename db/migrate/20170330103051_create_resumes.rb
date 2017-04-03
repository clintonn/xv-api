class CreateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|
      t.integer :user_id
      t.string :hash_url
      t.string :custom_url

      t.timestamps
    end
  end
end
