require 'rails_helper'

RSpec.describe Reader do
  let(:reader) {Reader.new}
  context '#record_read' do
    it 'returns read instance if read is recorded' do
      # reader = Reader.new
      params = {title: 'test', url: 'http://test.com'}
      result = reader.record_read(params)

      expect(result.url).to eq('http://test.com')
      expect(result.title).to eq('test')
    end
  end
end
