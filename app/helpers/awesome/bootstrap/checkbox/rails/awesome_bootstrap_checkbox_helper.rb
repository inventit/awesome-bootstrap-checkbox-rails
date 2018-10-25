module Awesome::Bootstrap::Checkbox::Rails::AwesomeBootstrapCheckboxHelper

  %w(primary success info warning danger).each do |klass|
    define_method("abc_#{klass}_check_box_tag") do |name, label="", value="1", checked=false, options={}|
      default_options = {}
      options = default_options.deep_merge(options)

      content_tag :div, class: "checkbox checkbox-#{klass}", style: "margin-top:0; margin-bottom:0;" do
        concat check_box_tag name, value, checked, options
        concat content_tag :label, label, for: name
      end
    end

    define_method("abc_#{klass}_circle_check_box_tag") do |name, label="", value="1", checked=false, options={}|
      default_options = {}
      options = default_options.deep_merge(options)

      content_tag :div, class: "checkbox checkbox-#{klass} checkbox-circle", style: "margin-top:0; margin-bottom:0;" do
        concat check_box_tag name, value, checked, options
        concat content_tag :label, label, for: name
      end
    end
  end
end