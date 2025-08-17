class Blog < ApplicationRecord
  # belongs_to :student
  has_and_belongs_to_many :students #, join_table: 'students_blogs'
end
