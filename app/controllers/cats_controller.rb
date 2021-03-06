class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to(cats_url)
    else
      render :new
    end

  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      redirect_to(cat_url(@cat))
    else
      render :edit
    end
  end

  def delete
    @cat = Cat.find(params[:id])
    if @cat.destroy
      redirect_to(cats_url)
    else
      redirect_to(cat_url(@cat))
    end
  end

  def cat_params
    params.require(:cat).permit(:name,:sex,:color,:birth_date,:description)
  end

end
