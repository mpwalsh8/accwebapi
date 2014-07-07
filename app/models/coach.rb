class Coach < ActiveRecord::Base
  # a coach can coach more than one team
  has_and_belongs_to_many :teams

  def fullname
    firstname + " " + lastname
  end

  def lastcommafirst
    lastname + ", " + firstname
  end

  #  Is coach on staff?
  def is_on_staff?(team)
    self.teams.include?(team)
  end

  #  Get all teams coach is not on staff of
  def is_not_on_staff
    #Team.find(:all) - self.teams
    Team.all - self.teams
  end
end
