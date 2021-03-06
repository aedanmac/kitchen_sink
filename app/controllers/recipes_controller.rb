class RecipesController < ApplicationController
  
  def index
  	@recipes = Recipe.all
  end

  def welcome
  	@recipes = Recipe.all
  end

  def create
  	@recipe = Recipe.new(recipe_params)

  	if @recipe.save
  		redirect_to :recipes
  	else
  		render :new
  	end
  end

  def show
  	@recipe = Recipe.find(params[:id])
  end

  def edit
  	@recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def update
  	@recipe = Recipe.find(params[:id])

  	if @recipe.update_attributes(recipe_params)
  		redirect_to :recipes
  	else
  		render :edit
  	end
  end

  def destroy
  	@recipe = Recipe.find(params[:id])
  	@recipe.destroy
  	redirect_to recipes_path
  end

private
	def recipe_params
		params.require(:recipe).permit(:name, :directions, :ingredients, :avatar)
	end

end
