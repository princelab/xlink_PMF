$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'search_engine'
require 'tools/ppm'
require 'bin'
require 'xcorr'
TFILES = File.join(File.dirname(__FILE__), 'tfiles')

def load_tfiles(string)
  Dir.glob(File.join(TFILES, string))
end

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  
end
