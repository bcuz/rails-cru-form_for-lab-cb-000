class ArtistsController < ApplicationController

  def new
    @artist = Artist.new

  end
  def show
    @artist = Artist.find(params[:id])

  end

  def update
     # @post = Post.find(params[:id])
     # @schoolclass = SchoolClass.find(params[:id])
    #  @student = Student.find(params[:id])
     @artist = Artist.find(params[:id])


     # @post.update(title: params[:title], description: params[:description])
     @artist.update(artist_params(:name, :bio))
     #
     # redirect_to post_path(@post)
     redirect_to artist_path(@artist)

   end

  def edit
    @artist = Artist.find(params[:id])

  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)

  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
