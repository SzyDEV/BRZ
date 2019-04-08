class ChangeBoolIntoInt < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :is_confirmed, :integer
  end
end
