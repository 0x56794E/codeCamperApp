class User < ActiveRecord::Base
	has_many :interests

	validates :name, presence: true
end
