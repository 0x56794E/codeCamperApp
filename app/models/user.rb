class User < ActiveRecord::Base
	has_many :interests

	validates :name, presence: true
	validates :email, presence: true
end


# users has and belong to many interests
