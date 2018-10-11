module Awesome::Bootstrap::Checkbox::Rails::AwesomeBootstrapCheckboxHelper

  %w(primary success info warning danger).each do |klass|
    define_method("abc_#{klass}_check_box_tag") do |name, label="", value="1", checked=false, options={}|
      abc_options = { 
        class: "checkbox checkbox-#{klass}" 
      }
      options = options.merge abc_options

      content_tag :div, options do
        concat check_box_tag name, value, checked
        concat content_tag :label, label, for: name
      end
    end
  end

  # def abc_success_check_box_tag(name, label="", value="1", checked=false)
  #   abc_check_box_tag name, label, value, checked, class: "checkbox checkbox-success"
  # end

  def abc_check_box_tag(name, label="", value="1", checked=false, options={})
    content_tag :div, options do
      concat check_box_tag name, value, checked
      concat content_tag :label, label, for: name
    end
  end

end