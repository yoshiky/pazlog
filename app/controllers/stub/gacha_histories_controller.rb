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
  end
  
end
