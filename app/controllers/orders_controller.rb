class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.where({ user_id: current_user.id })
  end

  def index_request
    @my_listings = Listing.where({ user_id: current_user.id })
    @orders = Order.where({ listing_id: @my_listings.map(&:id) })
  end

  def index_with_status
    @my_listings = Listing.where({ user_id: current_user.id })
    if (params[:status] == "All")
      @orders = Order.where({ listing_id: @my_listings.map(&:id) })
    else
      @orders = Order.where({ listing_id: @my_listings.map(&:id), status: params[:status] })
    end
    render :partial => "index"
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @user = User.find(params[:user])
    @listing = Listing.find(params[:listing])
    @other_orders = Order.where({ listing_id: @listing.id })

    #ActionView::Base.debug_rjs = true
  end

  # GET /orders/1/edit
  def edit
    @listing = Listing.find(@order.listing_id);
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def accept
    @order = Order.find(params[:order_id])
    @order.update_attribute(:status, "Accepted")

  end

  def deny
    @order = Order.find(params[:order_id])
    @order.update_attribute(:status, "Denied")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:start_time, :end_time, :status, :price, :user_id, :listing_id)
    end
end
