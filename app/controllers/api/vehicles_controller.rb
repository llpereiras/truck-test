module Api
  class VehiclesController < ApplicationController
    before_action :set_vehicle, only: [:show, :update, :destroy]

    # GET /vehicles
    # GET /vehicles.json
    def index
      @vehicles = Vehicle.all
    end

    # GET /vehicles/1
    # GET /vehicles/1.json
    def show
    end

    # POST /vehicles
    # POST /vehicles.json
    def create
      @vehicle = Vehicle.new(vehicle_params)

      if @vehicle.save
        render :show, status: :created, location: @vehicle
      else
        render json: @vehicle.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /vehicles/1
    # PATCH/PUT /vehicles/1.json
    def update
      if @vehicle.update(vehicle_params)
        render :show, status: :ok, location: @vehicle
      else
        render json: @vehicle.errors, status: :unprocessable_entity
      end
    end

    # DELETE /vehicles/1
    # DELETE /vehicles/1.json
    def destroy
      @vehicle.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_vehicle
        @vehicle = Vehicle.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def vehicle_params
        params.require(:vehicle).permit(:type, :body_type)
      end
  end
end
