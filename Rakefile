require "rake/testtask"
require "pry"
require "./app"

task :default => [:test]

task :console do
  # load models & make db connection here
  binding.pry
end

Rake::TestTask.new do |t|
  t.pattern = "test/*_{test,spec}.rb"
  t.verbose = true
end
