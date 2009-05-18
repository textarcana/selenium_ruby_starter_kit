#!/usr/bin/env ruby
# :title:Sanity Tests
# = Name
# Sanity Tests
# = Description
# Prove the HTML title of page is what we expect it to be at the time the page is served.  These 'idiot checks' will alert us if something has gone completely awry.

require "selenium_helper"

# == Globally Verify Page Titles
class TitlesGlobalTest < Test::Unit::TestCase

  include SeleniumHelper

  # === Test Public Page Titles
  def test_public_page_titles
    browser.open "/"
    assert_equal "Google", browser.title
  end  

end

