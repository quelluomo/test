class Video < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :video_ratings
  has_many :ratings, :through => :video_ratings
  attr_reader :previous

  #accepts_nested_attributes_for :ratings, reject_if: lambda {|attributes| attributes['status'].blank?}
  validates_presence_of :title, :url


  #def self.next
  #  self.where("id > ?", id).first
  #end

  #def self.previous
  #  self.where(["id < ?", id]).order('id').last
  #end
end
