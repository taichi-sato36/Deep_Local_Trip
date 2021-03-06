require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DeepLocalTrip
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # -------------------
    # タイムゾーンを東京に
    # -------------------
    config.time_zone = 'Tokyo'

    # -------------------
    # 日本語にする
    # -------------------
    config.i18n.default_locale = :ja
    
    # -------------------
    # libを読み込む
    # -------------------
    config.paths.add 'lib', eager_load: true
  end
end
