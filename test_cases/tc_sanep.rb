#!/usr/bin/env ruby
# :title:Sanity Tests
# = Name
# Sanity Tests
# = Description
# Prove the HTML title of page is what we expect it to be at the time the page is served.  These 'idiot checks' will alert us if something has gone completely awry.

require "selenium_helper"

# == Verify that the page is what we expect
class SanityTest < Test::Unit::TestCase

  include SeleniumHelper

  # === Test Page Title
  def test_public_page_titles
    browser.open "/"
    assert_equal "Google", browser.title
  end

  # === Verify expected content is present
  def test_text_is_present
    browser.open "/"
    assert browser.text? "Advanced Search"
  end

end

