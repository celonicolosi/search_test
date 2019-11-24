When("I access google website and search for {string}") do |citizens|
    visit 'https://google.com'
    fill_in 'q', with: citizens
    click_button 'Google Search', match: :first
    #find('.gNO89b', match: :first).click
  end
  
  Then("I must find and click on Citizens Advice link") do
    expect(page).to have_content('Online free advice from Citizens Advice')
    results = page.all('span.S3Uucc')
    results[0].click
  end