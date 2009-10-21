# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bugboard_session',
  :secret      => '9de0721c2dcf2d45eb8313c18e56f95b5a32a8f01d91b070790421026e9c87415125e5bc8336f2ec9de36af7571dc6f7d8398b4eea32577f08dd2c56901b7f15'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
