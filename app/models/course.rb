class Course < ApplicationRecord
  self.table_name = "courses"
  has_many :accounts
end
