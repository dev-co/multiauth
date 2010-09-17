module Multiauth
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "initializes the required files"

      def copy_multiauth_js
        copy_file "multiauth.js", "public/javascripts/"
      end

      def copy_openid_selector
        copy_directory "openid-realselector", "public/javascripts/openid-realselector"
      end

      protected
    end
  end # Generators
end # Multiauth
