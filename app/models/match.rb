# == Schema Information
#
# Table name: matches
#
#  id          :integer          not null, primary key
#  sender_id   :integer
#  receiver_id :integer
#  match       :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Match < ActiveRecord::Base

	belongs_to :metoyou, foreign_key: 'sender_id', class_name: 'User'
	belongs_to :youtome, foreign_key: 'receiver_id', class_name: 'User'

	# belongs_to :user, :foreign_key => 'receiver_id'
 	# belongs_to :sender, class_name: 'User'
 	# belongs_to :receiver, class_name: 'User'
end