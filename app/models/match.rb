class Match < ActiveRecord::Base
	belongs_to :user, :foreign_key => :receiving_id
 	belongs_to :sender, class_name: 'User'
 	belongs_to :receiver, class_name: 'User'
end