class GenresController < ApplicationController

  def new
    @genre = Genre.new

  end

  def update
     # @post = Post.find(params[:id])
     # @schoolclass = SchoolClass.find(params[:id])
    #  @student = Student.find(params[:id])
    #  @artist = Artist.find(params[:id])
     @genre = Genre.find(params[:id])


     # @post.update(title: params[:title], description: params[:description])
     @genre.update(genre_params(:name))
     #
     # redirect_to post_path(@post)
     redirect_to genre_path(@genre)

   end

  def show
    @genre = Genre.find(params[:id])

  end

  def edit
    @genre = Genre.find(params[:id])

  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)

  end

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end


end
