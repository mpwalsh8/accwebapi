class Coach < ActiveRecord::Base
    # a coach can appear on more than one staff
    has_many :staffs
end
