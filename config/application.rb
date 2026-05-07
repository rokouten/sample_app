require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CodespacesTryRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Render(本番)では eager load が走るため、`app/**/*_test.rb` が紛れ込むと
    # Zeitwerk が定数不一致で起動失敗します。誤配置ファイルは autoload/eager_load から除外します。
    config.autoload_lib(ignore: [Rails.root.join("app", "**", "*_test.rb")])
  end
end
