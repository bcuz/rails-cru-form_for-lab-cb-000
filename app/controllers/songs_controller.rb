class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
    # binding.pry

  end


end
