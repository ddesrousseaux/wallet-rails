# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wallet_on_rails_session',
  :secret      => 'd0edcb37df6af107832a8a6ed1caf19229923dbc8fc7f5ac5f1f7a08fe58272f40dfefbf57f6cf4429b065dfa5e432aa566f1340f1854d1656944f3937e36931'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
