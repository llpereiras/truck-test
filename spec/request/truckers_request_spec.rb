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

  describe 'GET #get_nearby_truckers_content' do
    context 'Busca um shipment pela url' do
      it 'Espera-se que o http_status seja created' do
        get "/api/shipments/1/nearby_truckers", headers: { 'Content-Type' => 'application/json' }
        expect(response).to have_http_status(:ok)
      end

      it 'Espera-se que o conteúdo seja igual ao mockado FakeShipment.get_show_content' do
        get "/api/shipments/1/nearby_truckers", headers: { 'Content-Type' => 'application/json' }
        expect(response.body).to eq(FakeShipment.get_nearby_truckers_content.to_json)
      end

    end
  end


end