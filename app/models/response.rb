class Response < ActiveRecord::Base
  attr_accessible :question_id, :text
  belongs_to :question
end
