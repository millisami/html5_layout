require 'rails/generators/base'
class Html5LayoutGenerator < Rails::Generators::Base

  def self.source_root
		@source_root ||= File.join(File.dirname(__FILE__), 'templates')
	end
	
  argument :layout_name, :type => :string, :default => "application"
  class_option :stylesheet, :type => :boolean, :default => true, :desc => "Include stylesheet file"

  def generate_layout
    copy_file "stylesheet.css", "public/stylesheets/#{file_name}.css" if options.stylesheet?
    copy_file "handheld.css", "public/stylesheets/handheld.css" if options.stylesheet?
    
    copy_file "modernizr-1.5.min.js", "public/javascripts/modernizr-1.5.min.js"
    copy_file "jquery-1.4.2.min.js", "public/javascripts/jquery-1.4.2.min.js"
    copy_file "dd_belatedpng.js", "public/javascripts/dd_belatedpng.js"
    
    template "layout.html.erb", "app/views/layouts/#{file_name}.html.erb"
  end
  
  private
  
  def file_name
    layout_name.underscore
  end
end
