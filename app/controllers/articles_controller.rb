class ArticlesController < ApplicationController


	before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
	
	def index
		@articles = Article.all
	end

	def show 
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end	
	
	def create
	@article = current_user.articles.new(article_params)
		#if current_user
    #	@article.user_id = current_user.id
  	#end
		
		if @article.save
			redirect_to @article
		else
			render action:'new' # method render возврат new 
		end
	end

	def edit
		@article = Article.find(params[:id])
	end
	
	def update
		@article = Article.find(params[:id])
	
		if @article.update(article_params)
			redirect_to @article
		else
			render action:'edit' # method render возврат new 
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end

	private

	def article_params
		params.require(:article).permit(:title, :text, :user_id)
	end

end
	