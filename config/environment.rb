# Load the Rails application.
require File.expand_path('../application', __FILE__)

require 'bcrypt'

# Initialize the Rails application.
Rails.application.initialize!

test:
  adapter: sqlite3
  database: ":memory:"
  timeout: 500