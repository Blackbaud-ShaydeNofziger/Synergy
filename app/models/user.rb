class User < ActiveRecord::Base
	has_many :organizations
	has_many :events
	has_many :interests

end
