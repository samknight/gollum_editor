require "gollum_editor/version"
require "gollum_editor/form_builder"
require "gollum_editor/form_helper"

puts "send"
ActionView::Helpers::FormHelper.send(:include, GollumEditor::FormHelper)

module Rails  
    class GollumEditor < Engine
      initializer :assets do |config|
        Rails.application.config.assets.precompile += %w( gollum_editor/gollum.js gollum_editor/gollum.css )
      end
    end
end
