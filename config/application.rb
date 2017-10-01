require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Embiid21
  class Application < Rails::Application
    config.serve_static_assets = true

    config.time_zone = 'Eastern Time (US & Canada)'
    config.active_record.default_timezone = :local

    Obscenity.configure do |config|
      config.replacement = :garbled
    end

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
