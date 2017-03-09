require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    
    config.generators do |g|
      g.orm :active_record
      g.test_framework false
      g.stylesheets true
      g.javascripts true
      g.jbuilder true
      g.assets false
      g.helper false
    end

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
