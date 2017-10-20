module Api
  class TruckersController < ApplicationController
    before_action :set_trucker, only: [:show, :update, :destroy, :last_location]

    # GET /truckers
    # GET /truckers.json
    def index
      @truckers = Trucker.all
    end

    # GET /truckers/1
    # GET /truckers/1.json
    def show
      render partial: 'truckers/trucker', locals: { shipment: @trucker }
    end

    def last_location
      where = {city: params[:location][:city], state: params[:location][:state]}
      origin  = Origin.where(where).first
      return render json: {}, status: :not_found unless origin
      @trucker.update_columns(origin_id: origin.id)
      render json: {}, status: :no_content
    end

    # POST /truckers
    # POST /truckers.json
    def create
      @trucker = TruckerService.save(trucker_params)
      if response
        render json: @trucker, status: :created, location: [:api, @trucker]
      else
        render json: @trucker, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /truckers/1
    # PATCH/PUT /truckers/1.json
    def update
      @trucker = TruckerService.save(trucker_params)
      if response
        render json: @trucker, status: :created, location: [:api, @trucker]
      else
        render json: @trucker, status: :unprocessable_entity
      end
    end

    # DELETE /truckers/1
    # DELETE /truckers/1.json
    def destroy
      @trucker.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_trucker
        @trucker = Trucker.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def trucker_params
        params.require(:trucker).permit(:name, :phone, :vehicle => [:type, :body_type])
      end
  end
end
