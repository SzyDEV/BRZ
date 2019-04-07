class AddingForeignKey < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :tag
  end
end
