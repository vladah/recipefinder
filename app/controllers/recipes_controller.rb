class RecipesController < ApplicationController
  def index
  	@search_term = params[:search] || 'chocolate'
  	@recepies = Recipe.for(@search_term)
  end
end
