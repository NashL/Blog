class Api::V1::ApiController < ApplicationController
  def comments
    render :json => {"results": [1,2,3]}
  end
end

