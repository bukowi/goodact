class User < ActiveRecord::Base
  has_many :offers
  has_many :searches
end
