class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /listings
  # GET /listings.json
  def index
    @search = Listing.includes(:model, :brand, :cover_photo, :updated_at).search do
      with(:status, 'active')
      fulltext params[:search]
      spellcheck :count => 3
      paginate :page => params[:page], :per_page => 9
    end
    @listings = @search.results
    @suggestion = @search.spellcheck_collation
  end

  def index_my
    @listings = current_user.listings
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    @product_photos = ProductPhoto.where({ listing_id: @listing.id })

    if @listing.user_id == current_user.id
      @listing_orders = Order.where({ listing_id: @listing.id })
    end
    @comments_root = Comment.find_by_id(@listing.comment_root)
     @comments = @comments_root.hash_tree(limit_depth: 10)
  end

  # GET /listings/new
  def new
    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
    @product_photos = ProductPhoto.where({ listing_id: @listing.id })
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)
    @comment = Comment.new(title: 'root', author: 'nobody', body: 'empty')
    @comment.save
    @listing.comment_root = @comment.id

    respond_to do |format|
      if @listing.save

        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.delete
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:brand, :model, :price, :condition, :start_time, :end_time, :description, :user_id, :tag_list, :status, :cover_photo)
    end
end
