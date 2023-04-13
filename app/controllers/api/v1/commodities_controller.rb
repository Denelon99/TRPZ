module Api
  module V1
    class CommoditiesController < ApplicationController
      before_action :set_commodity, only: %i[ show update destroy ]
    
      # GET /commodities
      # GET /commodities.json
      def index
        @commodities = Commodity.all
        
        #render json: @commodities
      end
    
      # GET /commodities/1
      # GET /commodities/1.json
      def show
      end
    
      # POST /commodities
      # POST /commodities.json
      def create
        @commodity = Commodity.new(commodity_params)
    
        if @commodity.save
          render :show, status: :created, location: api_v1_commodities_path(@commodity)
        else
          render json: @commodity.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /commodities/1
      # PATCH/PUT /commodities/1.json
      def update
        if @commodity.update(commodity_params)
          render :show, status: :ok, location: @commodity
        else
          render json: @commodity.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /commodities/1
      # DELETE /commodities/1.json
      def destroy
        @commodity.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_commodity
          @commodity = Commodity.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def commodity_params
          params.require(:commodity).permit(:name, :price, :quantity, :storage_id)
        end
    end
    
  end
end