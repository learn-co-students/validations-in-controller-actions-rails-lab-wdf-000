class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    begin
      @author = Author.create!(author_params)

      redirect_to author_path(@author)
    rescue
      # redirect_to '/authors/new'
      render 'new'
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
