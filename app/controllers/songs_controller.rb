class SongsController < ApplicationController

  def index
    @songs = Song.all

  end
  def show
    @song = Song.find(params[:id])
    # binding.pry

  end

  def edit
    @song = Song.find(params[:id])

  end

  def update
     # @post = Post.find(params[:id])
     # @schoolclass = SchoolClass.find(params[:id])
    #  @student = Student.find(params[:id])
    #  @artist = Artist.find(params[:id])
     @song = Song.find(params[:id])


     # @post.update(title: params[:title], description: params[:description])
     @song.update(song_params(:name, :artist_id, :genre_id))
     #
     # redirect_to post_path(@post)
     redirect_to song_path(@song)

   end

  def new
    @song = Song.new

  end

  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)

  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end


end
