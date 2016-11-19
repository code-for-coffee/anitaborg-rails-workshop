class BirdsController < ApplicationController
  before_action :set_bird, only: [:show, :edit, :update, :destroy]

  # GET /birds
  # GET /birds.json
  def index
    @birds = Bird.all
  end

  # GET /birds/1
  # GET /birds/1.json
  def show
  end

  # GET /birds/new
  def new
    @bird = Bird.new
  end

  # GET /birds/1/edit
  def edit
  end

  # POST /birds
  # POST /birds.json
  def create
    @bird = Bird.new(bird_params)

    respond_to do |format|
      if @bird.save
        format.html { redirect_to @bird, notice: 'Bird was successfully created.' }
        format.json { render :show, status: :created, location: @bird }
      else
        format.html { render :new }
        format.json { render json: @bird.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /birds/1
  # PATCH/PUT /birds/1.json
  def update
    respond_to do |format|
      if @bird.update(bird_params)
        format.html { redirect_to @bird, notice: 'Bird was successfully updated.' }
        format.json { render :show, status: :ok, location: @bird }
      else
        format.html { render :edit }
        format.json { render json: @bird.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /birds/1
  # DELETE /birds/1.json
  def destroy
    @bird.destroy
    respond_to do |format|
      format.html { redirect_to birds_url, notice: 'Bird was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bird
      @bird = Bird.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bird_params
      params.require(:bird).permit(:name, :species, :origin)
    end
end
