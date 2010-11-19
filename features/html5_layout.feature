Feature: HTML5 Boilerplate Layout Generator
  In order to have a layout
  As a rails developer
  I want to generate a simple html5 layout

  Scenario: Generate normal application layout
    Given a new Rails app
    When I run "rails g html5_layout -f"
    Then I should see "stylesheet_link_tag "application"" in file "app/views/layouts/application.html.erb"
    And I should see "stylesheet_link_tag "handheld"" in file "app/views/layouts/application.html.erb"
    # And I should see file "app/helpers/layout_helper.rb"
    # And I should see file "app/helpers/error_messages_helper.rb"
    And I should see file "public/stylesheets/application.css"
    And I should see file "public/stylesheets/handheld.css"
    And I should see file "public/javascripts/dd_belatedpng.js"
    And I should see file "public/javascripts/jquery-1.4.2.min.js"
    And I should see file "public/javascripts/modernizr-1.5.min.js"
    
  Scenario: Generate named layout
    Given a new Rails app
    When I run "rails g html5_layout foo -f"
    Then I should see "stylesheet_link_tag "foo"" in file "app/views/layouts/foo.html.erb"
    And I should see "stylesheet_link_tag "handheld"" in file "app/views/layouts/foo.html.erb"
    And I should see file "public/stylesheets/foo.css"

  Scenario: Generate normal application layout with the sass option
    Given a new Rails app
    When I run "rails g html5_layout -f --sass"
    Then I should see "stylesheet_link_tag "application"" in file "app/views/layouts/application.html.erb"
    And I should see "stylesheet_link_tag "handheld"" in file "app/views/layouts/application.html.erb"
    # And I should see file "app/helpers/layout_helper.rb"
    # And I should see file "app/helpers/error_messages_helper.rb"
    And I should see file "app/stylesheets/application.sass"
    And I should see file "app/stylesheets/handheld.sass"
    And I should see file "config/compass.rb"
    And I should see "gem "compass", ">=0.10.5"" in file "Gemfile"
    And I should see "gem "compass-960-plugin", ">=0.10.0"" in file "Gemfile"
    And I should see file "public/javascripts/dd_belatedpng.js"
    And I should see file "public/javascripts/jquery-1.4.2.min.js"
    And I should see file "public/javascripts/modernizr-1.5.min.js"
