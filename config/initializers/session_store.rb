# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_xllamador_session',
  :secret      => '3f18b93a5cab2cd230e336dee413d62243d1a6a26614acc7f9a39fbedba062a85a7092cc8250e1bf8f2f23e10a55500066feffe671ba836a7a472bc35aca6ac1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
