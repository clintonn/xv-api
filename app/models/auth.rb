class Auth

  ALG = "HS256"

  def self.secret
    ENV["JWT_SECRET"]
  end

  def self.issue(hash)
    JWT.encode(hash, secret, ALG)
  end

  def self.decode(jwt)
    JWT.decode(jwt, secret, true, ALG)
  end

end
