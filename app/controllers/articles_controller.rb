class ArticlesController < ApplicationController

    def new 
        @articles = Article.new
      end
      
      def create
          @articles = Article.new(article_params)
          if @articles.save
            redirect_to root_path
          else
            render :new
          end
      end
  
      def article_params
          params.require(:article).permit(:title, :body, :author_id)
        end
    
end