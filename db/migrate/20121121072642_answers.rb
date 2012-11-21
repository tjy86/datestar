class Answers < ActiveRecord::Migration
  def change
  	create_table :answers do |t|
  		t.integer :question_id
  		t.string :answer1
  		t.string :answer2
  		t.string :answer3
  		t.timestamps
  	end
  end
end
