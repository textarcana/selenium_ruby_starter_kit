#!/usr/bin/env ruby
# :title:Selenium Helper
# = Name
# Selenium Helper
# = Description
# Provide setup, teardown and other utility methods for using Selenium with Test::Unit.
# == Arguments
# Three arguments are expected:
# 0. The root domain of the site against which to test (eg http://www.mysite.com)
# 0. A username for that site
# 0. A password for that username
# === Warnings
# Be sure to supply the (sub)domain to which the site resolves.  That is, if the site you are testing resolves to www.google.com, then you cannot supply google.com (without the 'www' subdomain) as the domain and the script will fail if you do.
#
# Requires Selenium Server Beta 1 running on port 4444.

require "rubygems"
require "test/unit"
gem "selenium-client", ">=1.2.9"
require "selenium/client"

unless ARGV.length >= 1
  puts "Argument Missing: You must specify the domain against which to test."
  exit 1
end

module SeleniumHelper
  attr_reader :browser
  $domain = ARGV[0]

  # == Start a new browser instance with no cookies or cached files.
  def setup
    @selenium = Selenium::Client::Driver.new "localhost", 4444, "*firefox", $domain, 10000
    @selenium.start_new_browser_session
  end

  # == Close the browser.
  def teardown
    @selenium.close_current_browser_session
  end

  # == Stringified JavaScript reference to the window object of the Application Under Test.
  $window = 'this.browserbot.getCurrentWindow().'

  # == Prepend some stringified JavaScript with a reference to the window object of the Application Under Test.
  def js_get(js_string)
    return @selenium.js_eval($window + js_string)
  end


end
