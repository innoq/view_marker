# ViewMarker

Marks Rails logs with a message at the beginning of view rendering:

```
Started GET "/en/about.html" for 127.0.0.1 at 2012-01-27 12:46:29 +0100
Processing by PagesController#about as HTML
  Parameters: {"lang"=>"en"}
---------------------------- Started view rendering ----------------------------
  Rendered pages/about.html.erb within layouts/application (0.9ms)
  User Load (0.3ms)  SELECT `users`.* FROM `users` WHERE `users`.`id` = 1 LIMIT 1
  Rendered layouts/_controls.html.erb (44.6ms)
  Rendered layouts/_header.html.erb (0.0ms)
  Rendered layouts/_navigation.html.erb (5.8ms)
Completed 200 OK in 66ms (Views: 64.9ms | ActiveRecord: 0.3ms) 
```

Can be useful to identify queries fired in views.

## Installation

ViewMarker hooks into `ActionController` and therefore only works with Rails.

To use it just include it in your Gemfile:

```ruby
gem 'view_marker'
```

And run `bundle install`.
