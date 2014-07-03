class Roster < ActiveRecord::Base
    # every roster is linked to an athelete through the athlete_id
    belongs_to :athlete
end
