class MenuController < ApplicationController
  before_action :set_cats
  def index
    @products = Product.all
    # @order_items = current_order.order_items.new
  end

  def search
    key = params[:search]

    results = Product.where('name LIKE ?', "%#{key}%")
    if params[:filter] == 'Select Filter'
      @products = results
    else
      symbol = params[:filter].gsub(/ /, '_').downcase!.to_sym
      @products = results.where(symbol => true)
    end
  end

  private

  def set_cats
    @cats = Category.all.where(display: true)
  end
end
