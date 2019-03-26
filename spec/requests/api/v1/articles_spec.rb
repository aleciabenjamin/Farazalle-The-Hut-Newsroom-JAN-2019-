require 'rails_helper'

RSpec.describe Api::V1::ArticlesController, type: :request do
  describe 'GET /v1/articles' do
    it 'should return Pong' do
      get '/api/v1/articles'

      json_response = JSON.parse(response.body)
      expect(response.status).to eq 200
      expect(json_response['message']).to eq 'Pong'
    end
  end
end