#!/usr/bin/env ruby
# :title:Functional Test Example
# = Name
# Functional Test Example
# = Description
# Run a very basic functional test

require "selenium_helper"
class FunctionalExampleTest < Test::Unit::TestCase

  include SeleniumHelper

  def test_searching_on_the_first_web_server
    @selenium.open "/"
    @selenium.type "q", "the first web server"
    @selenium.click "btnG"
    @selenium.wait_for_page_to_load "30000"
    begin
      assert @selenium.is_text_present("Tim Berners-Lee")
    rescue Test::Unit::AssertionFailedError
        @verification_errors << $!
    end

  end



  def test_searching_on_i_can_haz_cheezburger
    @selenium.open "/"
    @selenium.type "q", "i can haz cheezburger"
    @selenium.click "btnG"
    @selenium.wait_for_page_to_load "30000"
    begin
        assert @selenium.is_text_present("Lolcats")
    rescue Test::Unit::AssertionFailedError
        @verification_errors << $!
    end
  end

end

