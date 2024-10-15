class Url < ApplicationRecord
  validates :original_url, presence: true

  after_create :shorten_url

  def shorten_url 
    # Code to short url to 1 chars - will improve it later
    o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
    string = (0...1).map { o[rand(o.length)] }.join

    self.pretty_url = string 
    self.save
  end 
end
