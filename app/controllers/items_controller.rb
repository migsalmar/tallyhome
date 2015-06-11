class ItemsController < ApplicationController
  def index
      @items = current_user.items.order("name ASC")

  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @item.category_id = params[:category_id]
    @item.picture2 = params[:picture2]
    @item.notes = params[:notes]
    @item.color = params[:color]
    @item.price = params[:price]
    @item.quantity = params[:quantity]
    @item.model_sn = params[:model_sn]
    @item.name = params[:name].upcase

    if @item.save
      redirect_to categories_url,  :notice => "Item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.category_id = params[:category_id]
    @item.picture2 = params[:picture2]
    @item.notes = params[:notes]
    @item.color = params[:color]
    @item.price = params[:price]
    @item.quantity = params[:quantity]
    @item.model_sn = params[:model_sn]
    @item.name = params[:name]

    if @item.save
      redirect_to categories_url, :notice => "Item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    redirect_to categories_url, :notice => "Item deleted."
  end
end
