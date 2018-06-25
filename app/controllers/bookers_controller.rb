class BookersController < ApplicationController
  def top
  end
  def about
  end

  def index
      @bookers = Booker.all
      @booker = Booker.new
  end

  def show
      @booker = Booker.find(params[:id])
      @user = @booker.user
  end

  def create
      @book = Booker.new(booker_params)
      @book.user_id = current_user.id
       if @book.save
          flash[:notice] = "Book was successfully created."
          redirect_to booker_path(@book.id)
       else
          @bookers = Booker.all
          @booker = @book
          # binding pry
          render action: :index
      end
  end

  def edit
      @booker = Booker.find(params[:id])
  end

  def update
      @booker = Booker.find(params[:id])
      if @booker.update(booker_params)
         flash[:notice] = "Book was successfully updated."
         redirect_to booker_path(@booker.id)
      else
        render action: :edit
      end
  end

  def destroy
      booker = Booker.find(params[:id])
      booker.destroy
      redirect_to bookers_path
  end
  def booker_params
      params.require(:booker).permit(:title, :body, :user_id)
  end
end
