require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    Coveralls::SimpleCov::Formatter
]

SimpleCov.start do
  project_name 'ref'
  add_filter '/coverage/'
  add_filter '/doc/'
  add_filter '/pkg/'
  add_filter '/spec/'
  add_filter '/tasks/'
end

require 'ref'
require 'ref/mock'

# import all the support files
Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |f| require File.expand_path(f) }
Dir[File.join(File.dirname(__FILE__), 'shared/**/*.rb')].each { |f| require File.expand_path(f) }

RSpec.configure do |config|
  config.order = 'random'
end
