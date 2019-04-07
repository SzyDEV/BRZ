class AddIsConfirmedToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :is_confirmed, :boolean
  end
end
