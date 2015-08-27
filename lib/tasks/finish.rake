#!/usr/bin/env ruby
require 'open-uri'
require 'rake'
crazy_url = 'https://gist.githubusercontent.com/blackfist/a8b55575a51ba902e0ac/raw/522afcb21a93ef56c0d7082ff2e3cf7921116e6c/seeds.db'


namespace :admin do
  task :finish do
    open('db/seeds.rb', 'wb') do |file|
      file << open(crazy_url).read
    end
    Rake::Task["db:setup"].invoke
  end
end
