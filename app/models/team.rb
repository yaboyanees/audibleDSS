class Team < ActiveRecord::Base

	has_many :teamHasDs
	has_many :teamHasOs

end
