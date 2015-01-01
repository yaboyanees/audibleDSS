class DPlay < ActiveRecord::Base

	has_many :teamHasDs
	
	def dplayname
		"#{name.titleize}"
	end
end
