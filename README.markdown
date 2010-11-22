# HTML5 Layout Generator for Rails 3

It is a HTML5 layuout generator that generates the layout file based upon the HTML5 Boilerplate (http://github.com/paulirish/html5-boilerplate) code.

The generator takes one argument which will be the name of the layout and stylesheet files. If no argument is passed then it defaults to "application".

### Usage info:
    rails g html5_layout -h
    
### Example:
    rails generate html5_layout admin

    This will create:
        create  public/stylesheets/admin.css
        create  public/stylesheets/handheld.css
        create  public/javascripts/modernizr-1.5.min.js
        create  public/javascripts/jquery-1.4.2.min.js
        create  public/javascripts/dd_belatedpng.js
        create  app/views/layouts/admin.html.erb
  
    rails g html5_layout --sass
    
    This will add two gems, compass and compass-960-plugin, in the Gemfile. So, you need to run `bundle install`.
    The generator will also add 3 layout helpers to use in the views.
    * To set the title of the page, you can call `<%= title "The page title" %>`
    * To add js files in the layout, use `<% javascript "foo, bar" %>`
    * To add stylesheet files, use `<% stylesheet "foo, bar" %>`

This generator is heavily based upon the Ryan Bates's NiftyGenerators.