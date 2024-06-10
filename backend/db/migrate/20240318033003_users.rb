class Users < ActiveRecord::Migration[7.1]
	def change
		create_table :users do |t|
		  t.string :name, limit: 255
		  t.string :email, limit: 255
		  t.string :password, limit: 255
			t.string :jti, limit: 255
	
		  t.timestamps
		end
	  end
end
