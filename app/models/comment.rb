class Comment < ActiveRecord::Base
  belongs_to :video
  belongs_to :user

  validates_presence_of :content

  accepts_nested_attributes_for :user, reject_if: :all_blank
end
