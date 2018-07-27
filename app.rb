#!/usr/bin/env ruby

require 'optparse'

options = {
  name: "World"
}

OptionParser.new do |opts|
  opts.banner = "Hello World 1.0"

  opts.on("-n", "--name Name", "Say Hello to a specific name") do |name|
    options[:name] = name
  end

  opts.on("-h", "--help", "Display Help") do
    puts opts
    exit
  end
end.parse!

puts "Hello #{options.fetch(:name)}"

