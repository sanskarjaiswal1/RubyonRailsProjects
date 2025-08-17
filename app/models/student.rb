class Student < ApplicationRecord
  # has_many :blogs
  has_and_belongs_to_many :blogs
end
