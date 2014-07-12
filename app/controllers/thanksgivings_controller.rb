class ThanksgivingsController < ApplicationController
  before_action :set_thanksgiving, only: [:show, :edit, :update, :destroy]

  # GET /thanksgivings
  # GET /thanksgivings.json
  def index
    @thanksgivings = Thanksgiving.all
  end

  # GET /thanksgivings/1
  # GET /thanksgivings/1.json
  def show
  end

  # GET /thanksgivings/new
  def new
    @thanksgiving = Thanksgiving.new
  end

  # GET /thanksgivings/1/edit
  def edit
  end

  # POST /thanksgivings
  # POST /thanksgivings.json
  def create
    @thanksgiving = Thanksgiving.new(thanksgiving_params)

    respond_to do |format|
      if @thanksgiving.save
        format.html { redirect_to @thanksgiving, notice: 'Thanksgiving was successfully created.' }
        format.json { render :show, status: :created, location: @thanksgiving }
      else
        format.html { render :new }
        format.json { render json: @thanksgiving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thanksgivings/1
  # PATCH/PUT /thanksgivings/1.json
  def update
    respond_to do |format|
      if @thanksgiving.update(thanksgiving_params)
        format.html { redirect_to @thanksgiving, notice: 'Thanksgiving was successfully updated.' }
        format.json { render :show, status: :ok, location: @thanksgiving }
      else
        format.html { render :edit }
        format.json { render json: @thanksgiving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thanksgivings/1
  # DELETE /thanksgivings/1.json
  def destroy
    @thanksgiving.destroy
    respond_to do |format|
      format.html { redirect_to thanksgivings_url, notice: 'Thanksgiving was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thanksgiving
      @thanksgiving = Thanksgiving.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thanksgiving_params
      params.require(:thanksgiving).permit(:name, :body)
    end
end
