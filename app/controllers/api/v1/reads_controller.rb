class Api::V1::ReadsController < ApplicationController
  def create
    link = Link.find_or_create_by(URL: params[:URL])
    link.reads.create
    render json: {}, status: 202
  end
end
