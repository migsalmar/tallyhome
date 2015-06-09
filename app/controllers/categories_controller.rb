class CategoriesController < ApplicationController


def check_if_owner
    category=Category.find(params[:id])
    if category.user_id != current_user.id
      redirect_to "/categories", notice: "That's not yours!"
    end
  end

  def index
    @categories = current_user.categories.order("name ASC")
    # .ransack[params(:id)]
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new
    @category.user_id = params[:user_id]
    @category.picture1= params[:picture1]
    @category.name = params[:name].upcase

    if @category.save
      redirect_to "/categories", :notice => "Category created successfully."
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    @category.user_id = params[:user_id]
    @category.picture1 = params[:picture1]
    @category.name = params[:name]

    if @category.save
      redirect_to "/categories", :notice => "Category updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])

    @category.destroy

    redirect_to "/categories", :notice => "Category deleted."
  end
end
