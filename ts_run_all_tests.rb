# Run all the test cases in the test_cases directory or its subdirectories.
# Test case files are assumed to have names like tc_mumble.rb

Dir.glob(File.join(File.dirname(__FILE__),  'test_cases', '**', 'tc_*.rb')).each {|f| require f }
