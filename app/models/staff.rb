class Staff < ActiveRecord::Base
    # every staff is linked to a coach through the coach_id
    belongs_to :coach
end
