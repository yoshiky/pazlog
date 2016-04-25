module Stub
  class GachaHistoriesController < ApplicationController
    skip_before_filter :verify_authenticity_token
  
    def create
      json_request = JSON.parse(request.body.read)
      if params[:return] == 'ok'
        p json_request
        head :ok
      elsif params[:return] == 'ng'
        head :internal_server_error
      else
        head :not_fount
      end
    end

    def success
      render status: 200, json: 'success'
    end

    def internal_server_error
      render status: 500, json: 'internal server error'
    end

    def not_found
      render status: 404, json: 'not_found'
    end
  end
  
end
