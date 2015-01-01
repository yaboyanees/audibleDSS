class OPlay < ActiveRecord::Base

	has_many :teamHasOs

	def oplayname
		"#{name.titleize}"
	end
end
