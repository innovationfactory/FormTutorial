# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_forms_example_session',
  :secret      => '1d517def7bf758af7a4f42f0dc3a956c9dbf0db35a0df9f45ef4233726880369690339c24269320b537cbd2f6040d85f782e89ac9d1992d209fb76e63d80f900'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
