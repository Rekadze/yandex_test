require 'spec_helper'
require 'yandex'

describe Yandex do

  let(:site) {Yandex.new}

  before(:each) do
    site.home_page
  end

  after(:each) do
    site.close
  end

  it "Find in yandex market" do
    site.search_for "Nokia"
    site.search_results_page.suggest_link.click
    item = site.look_results_on_all_pages_for 'Nokia 8600 Luna'
    item.should == 'Nokia 8600 Luna'
  end
end
