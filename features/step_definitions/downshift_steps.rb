When("I click basic") do
  on(DownshiftNetlifyPage).basic_example_link
end

When("I click dropdown") do
  on(DownshiftNetlifyPage).dropdown_example_link
end

When("I click the dropdown box") do
  on(DownshiftNetlifyPage).dropdown_button
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
