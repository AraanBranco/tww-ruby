require 'rails/generators/base'

module TWW
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)

      def tww_initializer
        copy_file 'tww.rb', 'config/initializers/tww.rb'
      end
    end
  end
end