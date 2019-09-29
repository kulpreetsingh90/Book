class AuthorsController < ApplicationController

    def index
      @authors = Author.all
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
        params.require(:author).permit(:name)
      end

end
