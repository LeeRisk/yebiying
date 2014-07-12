class FmsController < ApplicationController
  before_action :set_fm, only: [:show, :edit, :update, :destroy]

  # GET /fms
  # GET /fms.json
  def index
    @fms = Fm.all
  end

  # GET /fms/1
  # GET /fms/1.json
  def show
  end

  # GET /fms/new
  def new
    @fm = Fm.new
  end

  # GET /fms/1/edit
  def edit
  end

  # POST /fms
  # POST /fms.json
  def create
    @fm = Fm.new(fm_params)

    respond_to do |format|
      if @fm.save
        format.html { redirect_to @fm, notice: 'Fm was successfully created.' }
        format.json { render :show, status: :created, location: @fm }
      else
        format.html { render :new }
        format.json { render json: @fm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fms/1
  # PATCH/PUT /fms/1.json
  def update
    respond_to do |format|
      if @fm.update(fm_params)
        format.html { redirect_to @fm, notice: 'Fm was successfully updated.' }
        format.json { render :show, status: :ok, location: @fm }
      else
        format.html { render :edit }
        format.json { render json: @fm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fms/1
  # DELETE /fms/1.json
  def destroy
    @fm.destroy
    respond_to do |format|
      format.html { redirect_to fms_url, notice: 'Fm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fm
      @fm = Fm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fm_params
      params.require(:fm).permit(:name, :description, :format, :storage)
    end
end
