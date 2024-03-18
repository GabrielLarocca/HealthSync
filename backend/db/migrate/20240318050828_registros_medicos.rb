class CreateRegistrosMedicos < ActiveRecord::Migration[7.1]
	def change
	  create_table :registros_medicos do |t|
		t.bigint :registro_medico_id, null: false
		t.bigint :usuario_id
		t.date :data_registro
		t.string :tipo_registro, limit: 100
		t.text :descricao
		t.string :instituicao, limit: 255
  
		t.timestamps
	  end
  
	  add_foreign_key :registros_medicos, :usuarios, column: :usuario_id
	end
  end