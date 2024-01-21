class CartController < ApplicationController
  before_action :set_render_cart
  before_action :initialize_cart
  def show
    # @order_items = current_order.order_items
  end

  def add
    @product = Product.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_item = @cart.orderables.find_by(product_id: @product.id)
    if current_item && quantity > 0
      current_item.update(quantity:)
    elsif quantity <= 0
      current_item.destroy
    else
      @cart.orderables.create(product: @product, quantity:)
    end

    respond_to do |format|
      # format.turbo_stream do
      #   render turbo_stream: turbo_stream.update('cart', partial: 'cart/cart', locals: { cart: @cart })
      # end
      format.html { redirect_to cart_url, notice: "Added Successfully" }
    end
  end

  def remove
    Orderable.find_by(id: params[:id]).destroy
    respond_to do |format|
      # format.turbo_stream do
      #   render turbo_stream: [turbo_stream.replace('cart',
      #                                               partial: 'cart/cart',
      #                                               locals: { cart: @cart })]
      # end
      format.html { redirect_to cart_url }
    end
  end

  def set_render_cart
    @render_cart = true
  end

  def initialize_cart
    if current_user
        @cart ||= Cart.find_by(id: current_user.id)

        if @cart.nil?
          @cart = Cart.create(id: current_user.id)
        end
    end

    #handle if no user present
  end
end
