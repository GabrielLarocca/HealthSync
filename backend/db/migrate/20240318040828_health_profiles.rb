class HealthProfiles < ActiveRecord::Migration[7.1]
	def change
		create_table :health_profiles do |t|
		  t.bigint :patient_id
			t.text :conditions
			t.text	:surgeries
		  t.text :allergise
		  t.decimal :weight
		  t.integer :height
	
		  t.timestamps
		end
	
		add_foreign_key :health_profiles, :patients, column: :patient_id
	  end
end
