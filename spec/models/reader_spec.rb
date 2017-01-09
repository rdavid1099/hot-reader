require 'rails_helper'

RSpec.describe Reader do
  let(:reader) {Reader.new}
  context '#record_read' do
    it 'returns read instance if read is recorded' do
      params = {title: 'test', url: 'http://test.com'}
      result = reader.record_read(params)

      expect(result.url).to eq('http://test.com')
      expect(result.title).to eq('test')
    end

    it 'returns read instance if read is increased' do
      Reader.create(title: 'test', url: 'http://test.com')
      params = {title: 'test', url: 'http://test.com'}
      result = reader.record_read(params)

      expect(result.url).to eq('http://test.com')
      expect(result.title).to eq('test')
      expect(result.counter).to eq(2)
    end

    it 'returns false if params are not validated' do
      params = {url: 'http://test.com'}
      result = reader.record_read(params)

      expect(result).to eq(false)
    end
  end
end
