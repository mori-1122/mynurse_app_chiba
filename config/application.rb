require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mynurse
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0
    config.autoload_lib(ignore: %w[assets tasks])
    config.i18n.default_locale = :ja ##日本語にする
    config.action_dispatch.allow_browser = true ##４０６エラー対応
  end
end