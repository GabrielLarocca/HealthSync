class HealthProfiles < ActiveRecord::Migration[7.1]
	def change
		create_table :health_profiles do |t|
		  t.bigint :user_id
		  t.string :name
		  t.date :birth_date
		  t.string :gender
		  t.string :blood_type, limit: 3
		  t.text :allergise
		  t.decimal :weight
		  t.integer :height
		  t.integer :age
	
		  t.timestamps
		end
	
		add_foreign_key :health_profiles, :users, column: :user_id
	  end
end
