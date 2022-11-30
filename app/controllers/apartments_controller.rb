class ApartmentsController < ApplicationController
    
    # GET/apartments
    def index
        render json: Apartment.all, status: :ok
    end

    # GET/apartments/:id
    def show
        apartment = Apartment.find(params[:id])
        render json: apartment, status: :ok
    end

    # POST/apartments
    def create
        apartment = Apartment.create!(apartment_params)
        render json: apartment, status: :created
    end

    # PATCH/apartments/:id
    def update
        apartment = Apartment.find(params[:id])
        apartment.update!(apartment_params)
        render json: apartment, status: :accepted
    end

    # DELETE/apartments/:id
    def destroy
        apartment = Apartment.find(params[:id])
        apartment.destroy
        head :no_content
    end

    private

    def apartment_params
        params.permit(:number)
    end
end
