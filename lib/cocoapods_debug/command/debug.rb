module Pod
  class Command
    # A command that just starts a debugger
    class Debug < Command
      self.summary = 'Start a debugging session'

      def run
        require 'pry'
        pry(config)
      end
    end
  end
end
