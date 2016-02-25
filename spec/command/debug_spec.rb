require 'spec_helper'

module Pod
  describe Command::Debug do
    let(:args) { %w(debug) }
    subject { Command.parse(args) }

    describe 'CLAide' do
      it 'registers it self' do
        expect(subject).to be_instance_of(Command::Debug)
      end
    end

    describe '#run' do
      it 'starts a pry session' do
        expect(subject).to receive(:pry).with(Pod::Config.instance)
        subject.run
      end
    end
  end
end
