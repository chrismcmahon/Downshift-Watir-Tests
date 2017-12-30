class DownshiftNetlifyPage
  include PageObject

  a(:basic_example_link, text: 'basic')
  a(:dropdown_example_link, text: 'dropdown')
  
  in_iframe(id: 'storybook-preview-iframe') do |frame|
  	text_field(:basic_text_field, placeholder: 'Enter color here', frame: frame)
    button(:dropdown_button, text: 'Black', frame: frame)
    div(:dropdown_result_first, id: 'downshift-1-item-0', frame: frame)
    div(:sdropdown_result_second, id: 'downshift-1-item-1', frame: frame)
    div(:dropdown_result_third, id: 'downshift-1-item-2', frame: frame)
    div(:result_field, id: 'downshift-1-item-0', frame: frame)
  end
end
