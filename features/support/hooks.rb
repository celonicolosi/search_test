Before do
  page.driver.browser.manage.window.maximize
  @google = GooglePage.new
  @citizens = CitizenAdvicePage.new
end