require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Dylanrichards
  class Application < Rails::Application
    config.i18n.enforce_available_locales = true
    config.assets.initialize_on_precompile = false

    config.autoload_paths += %W(#{config.root}/lib)
    config.generators do |g|
      g.test_frakework :rspec,
        fixtures: true
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
  end
end
