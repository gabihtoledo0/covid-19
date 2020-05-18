require 'devise/strategies/database_authenticatable'

class UnsecureAuthenticableStrategy < Devise::Strategies::DatabaseAuthenticatable
  def authenticate!
    user = User.find_by(email: authentication_hash[:email])
    fail!(:email_not_found) if user.nil?
  end
end