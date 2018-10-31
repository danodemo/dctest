class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.date :employment_date
      t.integer :employee_type_id

      t.timestamps
    end
  end
end
