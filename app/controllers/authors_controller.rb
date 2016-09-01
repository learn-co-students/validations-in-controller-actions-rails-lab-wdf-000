class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)

    # Here we check if the new instance of Author is valid
    if @author.valid?
      # Then we save it to the database
      @author.save

      # Then redirect to the author's page
      redirect_to author_path(@author)
    else
      # Validation failed, so we show the create form again
      # and can now use the error messages to show the user how
      # to correct the submission
      render :new
    end

  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
