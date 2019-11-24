class CitizenAdvicePage
    include RSpec::Matchers
    include Capybara::DSL

    def title
        page.has_title? "Citizens Advice"
    end

    def pop_up (uk_country)
        within '.home-extent-popup__options' do
            click_on uk_country
        end
    end

    def click_uk
        pop_up('England')        
    end

    def compare_menu_items (items)
        navigation = page.all('li.top-item.js-mega-menu > a')

        items.each_with_index do |value, index|
          expect(navigation[index]).to have_content value['nav']
        end
    end

    def citizens_advice_search (search)
        fill_in 'main-header__search__input', with: search
        page.find('.main-header__search__submit').click
    end

    def right_results (result)
        page.has_link? result
    end

    def wrong_result (wrong)
        page.has_content? 'No results for #{wrong}'
        page.has_content? 'It’s worth checking your spelling or trying more general words.'
    end
end