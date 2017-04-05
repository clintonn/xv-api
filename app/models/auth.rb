class Auth

  ALG = "HS256"

  def self.secret
    ENV["JWT_SECRET"]
  end

  def self.issue(hash)
    a = JWT.encode(hash, secret, ALG)
    puts a
    a
  end

  def self.decode(jwt)
    JWT.decode(jwt, secret, true, {algorithm: ALG})
  end

end
