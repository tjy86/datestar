# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  tagline         :string(255)
#  main_pic_id     :integer
#  age             :integer
#  gender          :string(255)
#  city            :string(255)
#  state           :string(255)
#  ethnicity       :string(255)
#  description     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
	has_many :photos
	has_secure_password
end