class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string :employer
      t.datetime :time_start
      t.datetime :time_end
      t.string :position

      t.timestamps
    end
  end
end
