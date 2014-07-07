class Athlete < ActiveRecord::Base
    #  an athlete can appear on more than one roster
    has_many :rosters

    def fullname
        firstname + " " + lastname
    end

    def lastcommafirst
        lastname + ", " + firstname
    end
end
