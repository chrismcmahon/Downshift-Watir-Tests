class DownshiftNetlifyPage
  include PageObject

  a(:basic_example_link, text: 'basic')
  a(:dropdown_example_link, text: 'dropdown')
  a(:instant_search_example_link, text: 'instant search')
  
  in_iframe(id: 'storybook-preview-iframe') do |frame|
  	text_field(:basic_text_field, placeholder: 'Enter color here', frame: frame)
    button(:dropdown_button, text: 'Black', frame: frame)
    div(:dropdown_result_first, id: 'downshift-1-item-0', frame: frame)
    div(:dropdown_result_second, id: 'downshift-1-item-1', frame: frame)
    div(:dropdown_result_third, id: 'downshift-1-item-2', frame: frame)
    text_field(:instant_search_text_field, value: '', frame: frame)
    div(:result_field, id: 'downshift-0-item-0', frame: frame)
    span(:search_result_field_first, class: 'ais-Highlight-nonHighlighted', index: 0, frame: frame)
    mark(:search_result_field_second, class: 'ais-Highlight-highlighted', frame: frame)
    span(:search_result_field_third, class: 'ais-Highlight-nonHighlighted', index: 1, frame: frame)
  end
end
