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
        Given the list of items on main navigation
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

    Scenario: Verify the the main navigation header and search for State Pension in "How can we help?"" search bar
        And choose where that live in UK
        Given the list of items on main navigation
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
        Given the list of items on main navigation
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
        Then a no results for "Lorem Ipsum" message should appear