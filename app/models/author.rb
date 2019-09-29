class Author < ApplicationRecord

    has_many :articles
    has_one_attached :author_image

    def article_list?
        @list = Author.Article
    end

end