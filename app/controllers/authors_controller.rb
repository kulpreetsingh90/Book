class AuthorsController < ApplicationController

    def index
      @authors = Author.all
    end

    def show 
      @author = Author.find(params[:id])
    end

    def new 
      @authors = Author.new
    end
    
    def create
        @authors = Author.new(author_params)
        if @authors.save
          redirect_to root_path
        else
          render :new
        end
    end

    def author_params
        params.require(:author).permit(:name, :author_image)
      end

end
