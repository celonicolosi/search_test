# Search Test

This automation tests a search in Google for Citizens Advice and verify the search functionality on the Citizens Advice website.

### Prerequisites

**Ruby**

In order to run the test assure that you have Ruby (2.4.1 or higher) installed on your machine.

**Chromedriver**

1. Access Chromedriver website <https://chromedriver.storage.googleapis.com/index.html>
2. Download the last version (to know what is the last version access <https://chromedriver.storage.googleapis.com/LATEST_RELEASE>)
3. Unzip the file chromedriver_mac64.zip
4. Enter your Download folder through terminal
5. Move the file to the PATH, execute the following command: mv chromedriver /usr/local/bin

**Bundler**

Install the Ruby gem Bundler

```
gem install bundler
```

Access the project folder in Terminal and run the following command:

```
bundle install
```

### Features

Feature: Search google for Citizens Advice and verifying the search functionality on the Citizens Advice website.
        As a user I should be able to search for Citizens Advice on Google
        Once I have navigated to the Citizens Advice website, I want to see and verify the list of items on the main navigation header of the home page.
        And I can search for Pension related help on the home page and verify the search results contain a link to, "State Pension"

    Background: Search for Citizens Advice on Google
        When I access google website and search for "Citizens Advice"
        Then I must find and click on Citizens Advice link

    Scenario: Verify the the main navigation header and search for State Pension in header search bar
        When I'm on the main page of Citizens Advice
        And choose where that live in UK
        Given The list of items on main navigation
            | nav            |
            | Benefits       |
            | Work           |
            | Debt and money |
            | Consumer       |
            | Housing        |
            | Family         |
            | Law and courts |
            | Immigration    |
            | Health         |
            | More from us   |
        Then I must ensure that it's all there
        When I search for "Pension" in the header search bar
        Then the result must have a link to "State Pension" page information

    Scenario: Verify the main navigation header and search for State Pension in "How can we help?"" search bar
        And choose where that live in UK
        Given The list of items on main navigation
            | nav            |
            | Benefits       |
            | Work           |
            | Debt and money |
            | Consumer       |
            | Housing        |
            | Family         |
            | Law and courts |
            | Immigration    |
            | Health         |
            | More from us   |
        Then I must ensure that it's all there
        When I search for "Pension" in How can we help? search bar
        Then the result must have a link to "State Pension" page information

        Scenario: Wrong search on Citizens Advice
        And choose where that live in UK
        Given The list of items on main navigation
            | nav            |
            | Benefits       |
            | Work           |
            | Debt and money |
            | Consumer       |
            | Housing        |
            | Family         |
            | Law and courts |
            | Immigration    |
            | Health         |
            | More from us   |
        Then I must ensure that it's all there
        When I search for "Lorem Ipsum" in How can we help? search bar
        Then a no results found message should appear

## Running the tests

Just access the project folder in Terminal and run the following command:

```
cucumber
```