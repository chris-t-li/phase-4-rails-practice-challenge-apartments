class TenantsController < ApplicationController

    # GET /tenants
    def index
        render json: Tenant.all, status: :ok
    end

    # GET /tenants/:id
    def show
        tenant = Tenant.find(params[:id])
        render json: tenant, status: :ok
    end

    # POST /tenants
    def create
        tenant = Tenant.create!(tenant_params)
        render json: tenant, status: :created
    end

    # PATCH /tenants/:id
    def update
        tenant = Tenant.find(params[:id])
        tenant.update!(tenant_params)
        render json: tenant, status: :accepted
    end

    # DELETE /tenants/:id
    def destroy
        tenant = Tenant.find(params[:id])
        tenant.destroy
        head :no_content
    end

    private

    def tenant_params
        params.permit(:name, :age)
    end
end
