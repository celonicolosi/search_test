When("I'm on the main page of Citizens Advice") do
  page.has_title? "Citizens Advice"
end

When("choose where that live in UK") do
  within '.home-extent-popup__options' do
    click_on 'England'
  end
end

Given("The list of items on main navigation") do |table|
    @items = table.hashes
  end
  
  Then("I must ensure that it's all there") do
    navigation = page.all('li.top-item.js-mega-menu > a')
    
    @items.each_with_index do |value, index|
      expect(navigation[index]).to have_text value['nav']
    end
  end
  
  When("I search for {string} in the header search bar") do |pension|
    fill_in 'main-header__search__input', with: pension
    page.find('.main-header__search__submit').click
  end

  When("I search for {string} in How can we help? search bar") do |pension|
    fill_in 'ctl00$ctl00$RootPlaceHolder$RootPlaceHolder$ctl00$ctl00$ctl01', with: pension
    page.find('.search-inline__button', match: :first).click
  end

  Then("the result must have a link to {string} page information") do |string|
    page.has_link? "State Pension"
    page.has_content? "Find information about the State Pension, including how much you'll get and the option to defer."
  end

  Then("a no results found message should appear") do
    page.has_content? "No results for Lorem Ipsum"
    page.has_content? "It’s worth checking your spelling or trying more general words."
  end