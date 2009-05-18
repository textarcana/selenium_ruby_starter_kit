#!/usr/bin/env ruby
# :title:Functional Test Example
# = Name
# Functional Test Example
# = Description
# Run a very basic functional test

require "selenium_helper"
class FunctionalExampleTest < Test::Unit::TestCase

  include SeleniumHelper

  def test_functional_example
    browser.open "/"
    browser.type "q", "the first web server"
    browser.click "btnG"
    browser.wait_for_page_to_load "30000"
    assert browser.is_text_present("Tim Berners-Lee")
  end


end

