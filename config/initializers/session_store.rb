# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_producto_session',
  :secret      => '53da6d26ee10a0d4cb615857d1c8831554672e11829d4c0d69aadd4253761ba3ef1dbbe3f9c7647ab18661e5ca4bb23067eacb22846bc219da25a0c61a83040a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
