When("I access google website and search for {string}") do |citizens|
    @google.visit_url
    @google.google_search(citizens)
    @google.google_search_button
  end
  
  Then("I must find and click on Citizens Advice link") do
     @google.result_description
     @google.click_result
  end