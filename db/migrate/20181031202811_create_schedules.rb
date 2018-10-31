class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.references :employee, foreign_key: true
      t.references :shop, foreign_key: true
      t.datetime :check_in

      t.timestamps
    end
  end
end
