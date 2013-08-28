class Url < ActiveRecord::Base

#unneccesary to due self.ping
  validates :long_url, presence: true
  validates :long_url, format: { with: /^#{URI::regexp}$/ }

  def self.ping(long_url)
    begin
      uri = URI(long_url)
      res = Net::HTTP.get_response(uri)
    rescue => e
      error = e.message
    end
    if error
      404
    else
      res.code
    end 
  end

  before_create do |url|
    url.short_url = SecureRandom.hex(3)
  end

end
