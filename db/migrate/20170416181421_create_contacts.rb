class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :type
      t.string :value
      t.integer :resume_id

      t.timestamps
    end
  end
end
