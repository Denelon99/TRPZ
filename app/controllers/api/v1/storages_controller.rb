module Api
  module V1
    class StoragesController < ApplicationController
      before_action :set_storage, only: %i[ show update destroy ]
    
      # GET /storages
      # GET /storages.json
      def index
        @storages = Storage.all

        #render json: @storages
      end
    
      # GET /storages/1
      # GET /storages/1.json
      def show
      end
    
      # POST /storages
      # POST /storages.json
      def create
        @storage = Storage.new(storage_params)
    
        if @storage.save
          render :show, status: :created, location: api_v1_storages_path(@storage)
        else
          render json: @storage.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /storages/1
      # PATCH/PUT /storages/1.json
      def update
        if @storage.update(storage_params)
          render :show, status: :ok, location: @storage
        else
          render json: @storage.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /storages/1
      # DELETE /storages/1.json
      def destroy
        @storage.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_storage
          @storage = Storage.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def storage_params
          params.require(:storage).permit(:name, :location)
        end
    end
    
  end
end