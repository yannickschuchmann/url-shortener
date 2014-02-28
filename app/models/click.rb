class Click < ActiveRecord::Base
  belongs_to :url
  has_one :user, through: :urls
end
