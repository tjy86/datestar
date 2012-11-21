# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  question_id :integer
#  answer1     :string(255)
#  answer2     :string(255)
#  answer3     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Answer < ActiveRecord::Base
	belongs_to :question

end
