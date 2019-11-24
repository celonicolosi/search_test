When("I'm on the main page of Citizens Advice") do
  @citizens.title
end

When('choose where that live in UK') do
  @citizens.click_uk
end

Given('the list of items on main navigation') do |table|
  @items = table.hashes
end

Then("I must ensure that it's all there") do
  @citizens.compare_menu_items(@items)
end

When('I search for {string} in the header search bar') do |pension|
  @citizens.citizens_advice_search(pension)
end

When('I search for {string} in How can we help? search bar') do |pension|
  @citizens.citizens_advice_search(pension)
end

Then('the result must have a link to {string} page information') do |state|
  @citizens.right_results(state)
end

Then("a no results for {string} message should appear") do |wrong|
  @citizens.wrong_result(wrong)
end