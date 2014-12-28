class TeamHasO < ActiveRecord::Base

	belongs_to :oPlay
	belongs_to :team
	has_many :games

end
