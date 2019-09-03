class Rating < ActiveRecord::Base
  belongs_to :user
  has_many :video_ratings
  has_many :videos, :through => :video_ratings
end
