class EpiphaniesController < ApplicationController
  before_action :set_epiphany, only: [:show, :edit, :update, :destroy]

  # GET /epiphanies
  # GET /epiphanies.json
  def index
    @epiphanies = Epiphany.all
  end

  # GET /epiphanies/1
  # GET /epiphanies/1.json
  def show
  end

  # GET /epiphanies/new
  def new
    @epiphany = Epiphany.new
  end

  # GET /epiphanies/1/edit
  def edit
  end

  # POST /epiphanies
  # POST /epiphanies.json
  def create
    @epiphany = Epiphany.new(epiphany_params)

    respond_to do |format|
      if @epiphany.save
        format.html { redirect_to @epiphany, notice: 'Epiphany was successfully created.' }
        format.json { render :show, status: :created, location: @epiphany }
      else
        format.html { render :new }
        format.json { render json: @epiphany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epiphanies/1
  # PATCH/PUT /epiphanies/1.json
  def update
    respond_to do |format|
      if @epiphany.update(epiphany_params)
        format.html { redirect_to @epiphany, notice: 'Epiphany was successfully updated.' }
        format.json { render :show, status: :ok, location: @epiphany }
      else
        format.html { render :edit }
        format.json { render json: @epiphany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epiphanies/1
  # DELETE /epiphanies/1.json
  def destroy
    @epiphany.destroy
    respond_to do |format|
      format.html { redirect_to epiphanies_url, notice: 'Epiphany was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epiphany
      @epiphany = Epiphany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def epiphany_params
      params.require(:epiphany).permit(:body)
    end
end
