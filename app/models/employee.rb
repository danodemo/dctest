class Employee < ApplicationRecord
  belongs_to :employee_type
  has_many :schedules
  has_many :shops, through: :schedules
end
