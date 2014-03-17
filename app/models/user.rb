class User < Neo4j::Rails::Model
  property :email, :type => String
  property :auth_token, :type => String
  property :password_digest, :type => String
  property :password_reset_token, :type => String
  property :password_reset_sent_at, :type => DateTime

end
