class Question < ActiveRecord::Base
  attr_accessible :poll_id, :text, :a, :b, :c
  belongs_to :poll
  has_many :responses
end
