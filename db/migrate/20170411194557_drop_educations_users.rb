class DropEducationsUsers < ActiveRecord::Migration[5.0]
  def change
    drop_table :work_points
  end
end
