require "rails/engine"
require "bad_browser/version"
require "bad_browser/view_helpers"

module BadBrowser
  class Engine < Rails::Engine
    initializer "bad_browser.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
