require 'rails_helper'

RSpec.describe 'Api::ShipmentsRequest', type: :request do

  let(:params_shipment) { FakeShipment.get_post_content }

  describe 'POST #create' do
    context 'Cria um novo Shipment com valores do teste' do
      it 'Espera-se que o http_status seja created e o location seja api/shipment/:id' do
        post api_shipments_path, params: params_shipment
        expect(response).to have_http_status(:created)
        expect(response.header['Location']).to eq('http://www.example.com/api/shipments/1')
      end
    end
  end

  describe 'GET #show' do
    context 'Busca um shipment pela url' do
      it 'Espera-se que o http_status seja created' do
        get api_shipment_path(1), headers: { 'Content-Type' => 'application/json' }
        expect(response).to have_http_status(:ok)
      end

      it 'Espera-se que o conteúdo seja igual ao mockado FakeShipment.get_show_content' do
        get api_shipment_path(1), headers: { 'Content-Type' => 'application/json' }
        expect(response.body).to eq(FakeShipment.get_show_content.to_json)
      end

    end
  end

end