require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChatRoom
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Menonaktifkan Sprockets untuk JavaScript karena kita menggunakan esbuild
    config.assets.js_compressor = nil

    # Nonaktifkan penggunaan pipeline Sprockets untuk JavaScript dan aset lainnya
    config.assets.enabled = false

    # Pastikan Rails mencari file JavaScript di folder public/packs untuk esbuild
    config.assets.paths << Rails.root.join("public", "packs")

    # Menambahkan folder 'app/javascript' ke dalam jalur pencarian Rails untuk JavaScript
    config.eager_load_paths << Rails.root.join("app/javascript")

    # Ignore direktori yang tidak perlu, seperti asset dan task
    config.autoload_lib(ignore: %w(assets tasks))

    # Konfigurasi aplikasi, engine, dan railtie lainnya
    #
    # Pengaturan ini bisa dioverride di file konfigurasi lingkungan, seperti
    # yang ada di config/environments, yang diproses kemudian.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
