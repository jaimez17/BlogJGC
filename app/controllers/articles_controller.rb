class ArticlesController < ApplicationController

	def new
		@article = Article.new
	end

	def create
#		render plain: params[:article].inspect
		@article = Article.new(article_params)

		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def show
		@article = Article.find(params[:id])
	end

	def index
		@articles = Article.all
	end

=begin
	private
	def article_params
		params.require(:article).permit(:title, :text)
	end
=end
	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end	
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

	private
	def article_params 
		params.require(:article).permit(:title, :text)
	end

=begin
 TRUCO No es necesario pasar todos los atributos a update. Por ejemplo, 
 si ejecutaras @article.update(title: 'A new title') Rails solo actualizaría 
 el atributo title sin tocar los otros atributos.
=end

end
