require 'rails/generators'

module GollumEditor
  class InstallGenerator < ::Rails::Generators::Base
    source_root File.expand_path("../../../", __FILE__)
    desc "This generator installs Twitter Bootstrap to Asset Pipeline"

    def add_assets
      directory "assets", "vendor/assets"
    end

  end
end