module Api
  class ShipmentsController < ApplicationController
    before_action :set_shipment, only: [:show, :update, :destroy]

    # GET /shipments
    # GET /shipments.json
    def index
      @shipments = Shipment.all
      render json: @shipments
    end

    # GET /shipments/1
    # GET /shipments/1.json
    def show
      render partial: 'shipments/shipment', locals: { shipment: @shipment }
    end

    # POST /shipments
    # POST /shipments.json
    def create
      @shipment = ShipmentService.save(shipment_params)
      if @shipment
        render json: @shipment, status: :created, location: [:api, @shipment]
      else
        render json: @shipment, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /shipments/1
    # PATCH/PUT /shipments/1.json
    def update
      @shipment = ShipmentService.save(shipment_params)
      if @shipment
        render json: @shipment, status: :created, location: [:api, @shipment]
      else
        render json: @shipment, status: :unprocessable_entity
      end
    end

    # DELETE /shipments/1
    # DELETE /shipments/1.json
    def destroy
      @shipment.destroy
    end

    private
      def set_shipment
        @shipment = Shipment.find(params[:id])
      end

      def shipment_params
        params.require(:shipment).permit(
          :value,
          :weight_kg,
          :contact => [:name, :phone],
          :origin => [:city, :state, :load_at],
          :destination => [:city, :state, :deliver_at],
          :vehicles => [:type, :body_type]
        )
      end
  end
end
