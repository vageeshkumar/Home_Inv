class CategoriesController < ApplicationController
  
  def index    
    @categories = Category.all    
  end
  
  def show    
    @category = Category.find_by_id(params[:id])    
  end
  
  def new
    @category = Category.new    
  end
  
  def create
    t = Category.new
    t.name = params[:category][:name]
    t.save
    redirect_to categories_url
  end
  
  def destroy
    t = Category.find_by_id(params[:id])
    t.destroy
    redirect_to categories_url
  end
  
  def edit
    @category = Category.find_by_id(params[:id])
  end
  
end