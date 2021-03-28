require 'rubygems'
require 'taza/page'

module Yandex
  class SearchResultsPage < ::Taza::Page
    element(:suggest_link) { browser.link(xpath: "//td/a[text()='Мобильные телефоны']") }
    element(:results) { |count| browser.div(xpath: "//div[@class='b-offers b-offers_type_guru' and position()='#{count}']") }
    element(:results_name) {|count| results(count).link(class: 'b-offers__name')}
    element(:page_link) { |page_number| browser.link(text: page_number.to_s) }
  end
end
