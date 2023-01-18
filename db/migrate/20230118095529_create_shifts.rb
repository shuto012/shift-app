class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|

      t.datetime :start_time,             null: false
      t.datetime :finish_time,            null: false
      t.text :comment

      t.timestamps
    end
  end
end