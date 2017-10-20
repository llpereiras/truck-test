require 'rails_helper'

RSpec.describe 'Api::TruckersRequest', type: :request do

  describe 'POST #create' do
    context 'Cria um novo Trucker com valores do teste' do
      it 'Espera-se que o http_status seja created e o location seja api/trucker/:id' do
        post "/api/truckers", params: FakeTrucker.get_post_content
        expect(response).to have_http_status(:created)
        expect(response.header['Location']).to eq('http://www.example.com/api/truckers/1')
      end
    end
  end

  describe 'PUT #last_location' do
    context 'Atualiza um trucker ' do
      it 'Espera-se que o http_status seja no_content' do
        put "/api/truckers/1/last_location", params: FakeTrucker.get_last_location_content.to_json, headers: { 'Content-Type' => 'application/json' }
        expect(response).to have_http_status(:no_content)
      end
    end
  end

end