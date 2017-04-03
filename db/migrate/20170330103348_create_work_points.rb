class CreateWorkPoints < ActiveRecord::Migration[5.0]
  def change
    create_table :work_points do |t|
      t.integer :job_id
      t.string :desc

      t.timestamps
    end
  end
end
