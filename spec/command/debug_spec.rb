require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Debug do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ debug }).should.be.instance_of Command::Debug
      end
    end
  end
end

