# Prompt with ruby version
Pry.prompt = [proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} > " }, proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} * " }]

begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue LoadError => e
  puts 'no awesome_print'
end
