class User::NewCollectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_new_collection, only: [:show, :edit, :update, :destroy]

  # GET /new_collections
  # GET /new_collections.json
  def index
    @new_collections = NewCollection.all
  end

  # GET /new_collections/1
  # GET /new_collections/1.json
  def show
  end

  # GET /new_collections/new
  def new
    @new_collection = NewCollection.new
  end

  # GET /new_collections/1/edit
  def edit
  end

  # POST /new_collections
  # POST /new_collections.json
  def create
    @new_collection = NewCollection.new(new_collection_params)

    respond_to do |format|
      if @new_collection.save
        format.html { redirect_to @new_collection, notice: 'New collection was successfully created.' }
        format.json { render :show, status: :created, location: @new_collection }
      else
        format.html { render :new }
        format.json { render json: @new_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_collections/1
  # PATCH/PUT /new_collections/1.json
  def update
    respond_to do |format|
      if @new_collection.update(new_collection_params)
        format.html { redirect_to @new_collection, notice: 'New collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_collection }
      else
        format.html { render :edit }
        format.json { render json: @new_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_collections/1
  # DELETE /new_collections/1.json
  def destroy
    @new_collection.destroy
    respond_to do |format|
      format.html { redirect_to new_collections_url, notice: 'New collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_collection
      @new_collection = NewCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_collection_params
      params.require(:new_collection).permit(:title, :description)
    end
end
