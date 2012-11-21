class MembersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :name
  		t.string :password_digest
  		t.string :tagline
  		t.integer :main_pic_id
  		t.integer :age
  		t.string :gender
  		t.string :city
  		t.string :state
  		t.string :ethnicity
  		t.text :description
  		t.timestamps
 		end
  end
end
