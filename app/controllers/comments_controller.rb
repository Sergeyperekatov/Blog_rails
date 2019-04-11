class CommentsController < ApplicationController

def create
  @article = Article.find(params[:article_id])
  @article.comments.create({autor: 'Mike', body: 'Hello'})

  redirect_to article_path(@article)
end

private

def comment_params
    params.require(:comment).permit(:autor, :body)
  end
end
