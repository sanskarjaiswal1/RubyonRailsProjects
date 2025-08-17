class CreateBlogs < ActiveRecord::Migration[8.0]
  def change
    create_table :blogs do |t|
      t.string :content
      t.string :title
      t.integer :student_id
      t.timestamps
    end
  end
end
