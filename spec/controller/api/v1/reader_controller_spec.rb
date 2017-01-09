require 'rails_helper'

RSpec.describe Api::V1::ReaderController, type: :controller do
  describe 'POST create' do
    it 'creates a new read' do
      params = {
        title: 'test',
        url: 'http://www.test.com'
      }
      post :create, params: params

      resp = JSON.parse(response.body)
      expect(resp['status']).to eq(201)
      expect(resp['message']).to eq('Successfully created read')
    end
  end
end
