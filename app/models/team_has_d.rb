class TeamHasD < ActiveRecord::Base

	belongs_to :dPlay
	belongs_to :team
	has_many :games

end
