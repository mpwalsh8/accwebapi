class Sport < ActiveRecord::Base
  has_many :venues
  has_and_belongs_to_many :venues, through: :sports

  #  Is sport at facility?
  def is_at_facility?(venue)
    self.venues.include?(venue)
  end

  #  Get all venues sport has a facility at
  def is_at_facility
    self.venues
  end

  #  Get all venues sport does not have a facility at
  def is_not_at_facility
    Venue.all - self.venues
  end

end
