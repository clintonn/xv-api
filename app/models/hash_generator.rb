require 'securerandom'
class HashGenerator
  def self.generate
    id = SecureRandom.hex(6)
    Resume.find_by(hash_url: id) ? self.generate : id
  end
end
