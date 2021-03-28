require 'rubygems'

module Yandex
  class Yandex < ::Taza::Site

    def search_for(text)
      home_page.search_field.set text
      home_page.search_button.click
    end

    def look_results_for(text)
      i=1
      while i < 11
        return search_results_page.results_name(i).text if search_results_page.results_name(i).text == text
        i+=1
      end
    end

    def look_results_on_all_pages_for(text)
      i=1
      while i < 17
        item_name = look_results_for(text)
        return item_name if item_name == text
        i+=1
        search_results_page.page_link(i).click
      end
    end
  end
end
