class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  has_many :videos
end
