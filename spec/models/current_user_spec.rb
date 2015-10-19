require 'rails_helper'

RSpec.describe CurrentUser, type: :model do

  describe '#name' do
    it 'returns the user name' do
      current_user = CurrentUser.new(name: 'foo')
      expect(current_user.name).to eq 'foo'
    end
  end

  describe '#==' do
    subject { CurrentUser.new(name: 'foo') }
    let(:challenger) { CurrentUser.new(name: challenger_name) }

    context 'names are different' do
      let(:challenger_name) { 'bar' }
      it 'returns false' do
        expect(subject).to_not eq challenger
      end
    end

    context 'name are the same' do
      let(:challenger_name) { 'foo' }
      it 'returns true' do
        expect(subject).to eq challenger
      end
    end
  end

end
