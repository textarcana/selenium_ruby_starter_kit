
require 'rake/clean'

#require 'tasks/run.rb'

CLEAN.include 'create.rid', '*#'

CLOBBER.include 'doc'


namespace :rc do

  desc "start the selenium-rc server"

  task :start do

    # system (as distinct from exec or %x) launches new processes
    # rather than replacing the current process.

    system %{c:/toolchain/selenium-server.bat}

  end

end

desc "run some example tests against Google.com"

task :examples do

  puts %x{ ruby ts_run_all_tests.rb http://google.com}

end

desc "generate documentation for the project"
# TODO use rdoctask for this
#     http://rake.rubyforge.org/classes/Rake/RDocTask.html

task :rdoc do

  can_graph = installed? 'dot'

  enable_graphs = can_graph ?  '--diagram' : ''

  `ruby c:/cygwin/bin/rdoc #{enable_graphs}`

end

# == subroutines

# === Use which to determine if the tool I want is installed on this system

def installed? tool

  not `which #{tool}`.empty?

end
