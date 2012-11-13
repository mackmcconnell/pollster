class Poll < ActiveRecord::Base
  attr_accessible :title, :shorty
  has_many :questions
  before_create :generate_shorten_url

  def generate_shorten_url
    self.shorty = (('a'..'z').to_a + ('A'..'Z').to_a + (1..9).to_a).shuffle[0..2].join
  end
end
