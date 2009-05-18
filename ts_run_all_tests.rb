# Run all our test cases.
#require 'test_cases/tc_sanep'
Dir.glob(File.join(File.dirname(__FILE__), 'test_cases/tc_*.rb')).each {|f| require f }
