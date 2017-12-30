When("I click basic") do
  on(DownshiftNetlifyPage).basic_example_link
end

When("I click dropdown") do
  on(DownshiftNetlifyPage).dropdown_example_link
end

When("I click instant search") do
  on(DownshiftNetlifyPage).instant_search_example_link
end

When("I click the dropdown box") do
  on(DownshiftNetlifyPage).dropdown_button
end

When("I type {string} for instant search") do |part_search|
  on(DownshiftNetlifyPage).instant_search_text_field = part_search
  sleep 1
end

When("I type {string} in the text field") do |part_color|
  on(DownshiftNetlifyPage).basic_text_field = part_color
end

Then("{string} should appear in the page") do |color|
  expect(on(DownshiftNetlifyPage).result_field).to eq color
end

Then("I should see {string} and {string} and {string}") do |color1, color2, color3|
  on(DownshiftNetlifyPage) do |page|
    expect(page.first_dropdown_result).to eq color1
    expect(page.second_dropdown_result).to eq color2
    expect(page.third_dropdown_result).to eq color3
  end
end

Then("I should see {string} and {string} highlighted and {string} for instant search") do |one_part, separator, last_part|
  on(DownshiftNetlifyPage) do |page|
    expect(page.search_result_field_first).to eq one_part
    expect(page.search_result_field_second).to eq separator
    expect(page.search_result_field_third).to eq last_part
  end
end
