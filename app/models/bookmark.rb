class Bookmark < ApplicationRecord

	has_many :school_users

	belongs_to :user
end
