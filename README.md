# BadBrowser

'Unsupported browser' warning to IE users with [Chrome Frame](https://developers.google.com/chrome/chrome-frame/) install link.

This is the warning that will be displayed

![](http://treydock.github.com/bad_browser/images/bad_browser_warning.png)

## Requirements

* Rails >= 3.1

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bad_browser'
```

After running `bundle` use the generator `bad_browser:install`.  This will add the line `//= require bad_browser` to application.js.

## Usage

Call `bad_browser_include_tag` in your application's main layout.

```ruby
<%= bad_browser_include_tag :ie_supported => 9 %>
```

This will include the necessary javascript to warn users of Internet Explorer older than the version specified.  Default is IE9.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## To-Do

* add option to pass ```:none``` in place of an IE version to display the warning to all IE users

## Changelog

### 0.0.1 - 2012/04/12

* initial release of gem