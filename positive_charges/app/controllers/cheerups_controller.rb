class CheerupsController < ApplicationController
  before_action :set_cheerup, only: [:show, :edit, :update, :destroy]

  # GET /cheerups
  # GET /cheerups.json
  def index
    @cheerups = Cheerup.all
  end

  # GET /cheerups/1
  # GET /cheerups/1.json
  def show
  end

  # GET /cheerups/new
  def new
    @cheerup = Cheerup.new
  end

  # GET /cheerups/1/edit
  def edit
  end

  # POST /cheerups
  # POST /cheerups.json
  def create
    @cheerup = Cheerup.new(cheerup_params)

    respond_to do |format|
      if @cheerup.save
        format.html { redirect_to @cheerup, notice: 'Cheerup was successfully created.' }
        format.json { render :show, status: :created, location: @cheerup }
      else
        format.html { render :new }
        format.json { render json: @cheerup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cheerups/1
  # PATCH/PUT /cheerups/1.json
  def update
    respond_to do |format|
      if @cheerup.update(cheerup_params)
        format.html { redirect_to @cheerup, notice: 'Cheerup was successfully updated.' }
        format.json { render :show, status: :ok, location: @cheerup }
      else
        format.html { render :edit }
        format.json { render json: @cheerup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cheerups/1
  # DELETE /cheerups/1.json
  def destroy
    @cheerup.destroy
    respond_to do |format|
      format.html { redirect_to cheerups_url, notice: 'Cheerup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cheerup
      @cheerup = Cheerup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cheerup_params
      params.require(:cheerup).permit(:name, :content)
    end
end
