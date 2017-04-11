class CreateEducationsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :educations_users do |t|
      t.integer :user_id
      t.integer :education_id

      t.timestamps
    end
  end
end
