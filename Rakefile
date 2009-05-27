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
