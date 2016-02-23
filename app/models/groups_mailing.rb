class GroupsMailing < ActiveRecord::Base

  belongs_to :mailing
  belongs_to :group

end
