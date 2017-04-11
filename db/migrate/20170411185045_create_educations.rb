class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :institution
      t.string :degree
      t.string :major

      t.timestamps
    end
  end
end
