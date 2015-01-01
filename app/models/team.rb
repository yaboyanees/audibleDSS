class Team < ActiveRecord::Base

	has_many :teamHasDs
	has_many :teamHasOs

	def tname
		"#{name.titleize}"
	end
end
