class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    t.string "name"
    t.string "content"
  end
end
