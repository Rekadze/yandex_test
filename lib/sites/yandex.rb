require 'rubygems'
require 'taza'

module Yandex
  include ForwardInitialization

  class Yandex < ::Taza::Site
    def close
      browser.close
    end
  end
end
