class Api::V1::ReadsController < ApplicationController
  def create
    Link.find_or_create_by(URL: params[:URL]).reads.create
    render json: {}, status: 202
  end
end
