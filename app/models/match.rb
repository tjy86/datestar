class Match < ActiveRecord::Base
	belongs_to :user, :foreign_key => :receiving_id

end