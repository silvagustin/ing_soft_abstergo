class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name,             :null => false
    	t.string :last_name,        :null => false
    	t.string :username,         :null => false
      t.string :email,            :null => false
      t.string :crypted_password, :null => false
      t.string :salt,             :null => false

      # Agregados
      add_reference :auctions, :user, index: true

      t.boolean :active
      t.boolean :admin
      ############################################

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end