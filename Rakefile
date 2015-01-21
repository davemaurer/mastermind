require 'bundler'
Bundler.require

task :test do
  Dir.glob('./test/**/*_test.rb') { |file| require file }
end

#dir is the directory
#.glob will run through and give an array of file names
#ex: dir.glob will give you every file in the entire directory
