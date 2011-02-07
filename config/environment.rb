# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
NewsStories::Application.initialize!

# Patching the behaviour of error fields to use <span> instead of <div>
ActionView::Base.field_error_proc = Proc.new { |html_tag, instance| "<span class=\"field_with_errors\">#{html_tag}</span>".html_safe }