class Team < ActiveRecord::Base
  belongs_to :sport

  #  The "formal name" is derived from the gender,
  #  the sport name, and varsity or jv designation. 

  def formalname
    sprintf("%s's %s %s", gender.camelize,
      varsity? ? "Varsity" : "JV", sport.name)
  end

end
