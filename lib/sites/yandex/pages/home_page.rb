require 'rubygems'
require 'taza/page'

module Yandex
  class HomePage < ::Taza::Page
    element(:search_field) { browser.text_field(id: 'header-search') }
    element(:search_button) { browser.button(class: 'button_theme_normal').span(text: 'Найти').parent }
  end
end
