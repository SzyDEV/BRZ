class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :username, :null => false
      t.string :crypted_password, :null => false
      t.string :salt, :null => false

      t.timestamps                :null => false
    end

    add_index :admins, :username, unique: true
  end
end
