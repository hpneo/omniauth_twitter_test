class User
  attr_accessor :username, :email, :image
  
  def self.find_or_create_from_auth_hash(auth_hash)
    user = User.new
    
    user.username = auth_hash.info.nickname
    user.email = auth_hash.info.email
    user.image = auth_hash.info.image
    
    user
  end
end