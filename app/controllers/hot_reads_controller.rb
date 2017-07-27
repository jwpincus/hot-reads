class HotReadsController < ApplicationController
  def index
    @links = Link.hot
  end
end
