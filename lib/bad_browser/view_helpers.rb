module BadBrowser
  module ViewHelpers
    
    def bad_browser_include_tag(options = {})
      options[:ie_supported] ||= 9
      render :partial => "bad_browser", :locals => { :ie_supported => options[:ie_supported] }
    end
    
  end
end