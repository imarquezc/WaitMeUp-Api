class RequestsController < ApplicationController
    before_action :set_request, only: [:show, :update, :destroy]
  
    # GET /requests
    def index
      @requests = Request.all
      json_response(@requests)
    end
  
    # POST /requests
    def create
      @request = Request.create!(request_params)
      json_response(@request, :created)
    end
  
    # GET /requests/:id
    def show
      json_response(@request)
    end
  
    # PUT /requests/:id
    def update
      @request.update(request_params)
      head :no_content
    end
  
    # DELETE /requests/:id
    def destroy
      @request.destroy
      head :no_content
    end
  
    private
  
    def request_params
      # whitelist params
      params.permit(:title, :created_by)
    end
  
    def set_request
      @request = Request.find(params[:id])
    end
  end