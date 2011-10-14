class UserTattooStyle < ActiveRecord::Base
  belongs_to :user
  belongs_to :tattoo_style
end
