class Video < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :video_ratings
  has_many :ratings, :through => :video_ratings

  accepts_nested_attributes_for :ratings, reject_if: lambda {|attributes| attributes['status'].blank?}
  validates_presence_of :title, :url

  def next
    self.where("id > ?", id).first
  end

  def previous
    self.where("id < ?", id).last
  end
end
