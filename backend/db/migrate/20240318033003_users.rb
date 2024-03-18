class Users < ActiveRecord::Migration[7.1]
	def change
		create_table :usuarios do |t|
		  t.bigint :usuario_id, null: false
		  t.string :nome, limit: 255
		  t.string :email, limit: 255
		  t.string :senha_hash, limit: 255
		  t.date :data_nascimento
		  t.string :sexo, limit: 1
		  t.datetime :data_criacao
	
		  t.timestamps
		end
	  end
end
