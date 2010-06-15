# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mvcchallenge_session',
  :secret      => 'dafa927c12826cc2594c27b3d67c0c675c5b86a0649d27bf1bd81360a7225dc471a73ce6a00d5b1815438ab6489c1817295b8542c0a279ae9259ccad03a810ea'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
