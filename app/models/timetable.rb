class Timetable < ApplicationRecord

	belongs_to :course

	validates :day,:presence=>true
	validates :start,:presence=>true
	validates :end,:presence=>true
end
