require 'bundler/setup'

require 'cocoapods'
require 'cocoapods_debug/command'

#-----------------------------------------------------------------------------#

module Pod
  # Disable the wrapping so the output is deterministic in the tests.
  #
  UI.disable_wrap = true

  # Redirects the messages to an internal store.
  #
  module UI
    @output = ''
    @warnings = ''

    class << self
      attr_accessor :output
      attr_accessor :warnings

      def puts(message = '')
        @output << "#{message}\n"
      end

      def warn(message = '', _actions = [])
        @warnings << "#{message}\n"
      end

      def print(message)
        @output << message
      end
    end
  end
end

#-----------------------------------------------------------------------------#

RSpec.configure do |config|
  config.before(:each) do
    Pod::UI.output = ''
    Pod::UI.warnings = ''
  end
end
