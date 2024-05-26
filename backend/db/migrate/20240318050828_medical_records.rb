class MedicalRecords < ActiveRecord::Migration[7.1]
	def change
	  create_table :medical_records do |t|
		t.bigint :user_id
		t.text :description
		t.string :institution, limit: 255
		t.string :doctor_name, null:false
  
		t.timestamps
	  end
  
	  add_foreign_key :medical_records, :users, column: :user_id
	end
  end