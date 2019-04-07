class AddMadeByToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :made_by, :string
  end
end
