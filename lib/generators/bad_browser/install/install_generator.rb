module BadBrowser
  module Generators
    class InstallGenerator < Rails::Generators::Base
      
      desc 'This generator adds bad_browser to the asset pipeline'
      
      def inject_bad_browser_js
        if File.exist?("app/assets/javascripts/application.js")
          inject_into_file "app/assets/javascripts/application.js", :after => "//= require jquery_ujs\n" do
            "//= require bad_browser\n"
          end
        end
      end
    end
  end
end