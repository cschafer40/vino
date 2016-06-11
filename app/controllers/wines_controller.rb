class WinesController < ApplicationController

  def index
    @q = Wine.ransack(params[:q])
    @wines = @q.result
  end

  def show
    @wine = Wine.find(params[:id])
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new
    @wine.user_id = params[:user_id]
    @wine.price = params[:price]
    @wine.store = params[:store]
    @wine.description = params[:description]
    @wine.rating = params[:rating]
    @wine.style_grape = params[:style_grape]
    @wine.brand = params[:brand]
    @wine.label = params[:label]

    if @wine.save
      redirect_to "/wines", :notice => "Wine created successfully."
    else
      render 'new'
    end
  end

  def edit
    @wine = Wine.find(params[:id])
  end

  def update
    @wine = Wine.find(params[:id])

    @wine.user_id = params[:user_id]
    @wine.price = params[:price]
    @wine.store = params[:store]
    @wine.description = params[:description]
    @wine.rating = params[:rating]
    @wine.style_grape = params[:style_grape]
    @wine.brand = params[:brand]

    if @wine.save
      redirect_to "/wines", :notice => "Wine updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @wine = Wine.find(params[:id])

    @wine.destroy

    redirect_to "/wines", :notice => "Wine deleted."
  end
end
