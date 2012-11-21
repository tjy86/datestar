class MatchingTable < ActiveRecord::Migration
  def change
  	create_table :matches do |t|
  		t.integer :sender_id
  		t.integer :receiver_id
  		t.boolean :match # 0 is no match / 1 is match
  		t.timestamps
  	end
  end
end
