class GooglePage
    include Capybara::DSL

    def visit_url
        visit 'https://google.com'
    end

    def google_search (text)
        fill_in 'q', with: text
    end

    def google_search_button
        click_button 'Google Search', match: :first
    end

    def result_description
        page.has_content?'Online free advice from Citizens Advice'
    end

    def click_result
        results = page.all('span.S3Uucc')
        results[0].click  
    end
end