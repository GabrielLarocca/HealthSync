class PerfilSaude < ActiveRecord::Migration[7.1]
	def change
		create_table :perfil_saudes do |t|
		  t.bigint :perfil_saude_id, null: false
		  t.bigint :usuario_id
		  t.string :tipo_sanguineo, limit: 3
		  t.text :alergias
		  t.text :condicoes_preexistentes
		  t.text :medicamentos
	
		  t.timestamps
		end
	
		add_foreign_key :perfil_saudes, :usuarios, column: :usuario_id
	  end
end
