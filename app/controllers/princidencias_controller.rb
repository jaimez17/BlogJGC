class PrincidenciasController < ApplicationController
	def new

	end

	def index
		@articles = Article.all
	end
	
end
