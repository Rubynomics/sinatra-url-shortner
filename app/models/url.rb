require 'net/http'

class Url < ActiveRecord::Base
  before_create :shorten_url, :validate_url, :initialize_counter


  def shorten_url
    self.short_url = SecureRandom.urlsafe_base64(5)
  end

  def validate_url
    # response = Net::HTTP.get( URI::parse( self.url ) )
    unless self.url =~ /^https?:\/\//
      self.url = "http://#{self.url}"
    end
  end

  def initialize_counter
    self.click_count = 0
  end
end
