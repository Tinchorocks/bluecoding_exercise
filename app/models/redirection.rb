class Redirection < ApplicationRecord
  validates :url, presence: true

  def original_url 
    Url.find_by(pretty_url: url).original_url
  end 
end
