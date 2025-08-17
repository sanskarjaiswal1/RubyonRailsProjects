class CreateStudentsBlogsJoinTable < ActiveRecord::Migration[8.0]
  def change
    create_join_table :blogs, :students
  end
end
