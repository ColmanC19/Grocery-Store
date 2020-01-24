class ReviewsController < ApplicationController
  before_action :authorize, only: [:new, :create, :edit, :update, :destroy]

  def new
    @product = Product.find(params[:product_id])
    @employee = @product.employees.new
    render :new
  end

  def create
    @product = Product.find(params[:product_id])
    @employee = @product.employees.new(employee_params)
    if @employee.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:product_id])
    @employee = Review.find(params[:id])
    render :show
  end

  def edit
    @product = Product.find(params[:product_id])
    @employee = Review.find(params[:id])
    render :edit
  end

  def update
    @employee = Review.find(params[:id])
    if @employee.update(employee_params)
      redirect_to product_path(@employee.product)
    else
      render :edit
    end
  end

  def destroy
    @employee = Review.find(params[:id])
    @employee.destroy
    redirect_to product_path(@employee.product)
  end

  private
    def employee_params
      params.require(:employee).permit(:name)
    end

end
