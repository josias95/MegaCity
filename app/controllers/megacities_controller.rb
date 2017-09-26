class MegacitiesController < ApplicationController
  before_action :set_megacity, only: [:show, :edit, :update, :destroy]

  # GET /megacities
  # GET /megacities.json
  def index
    @megacities = Megacity.all
  end

  # GET /megacities/1
  # GET /megacities/1.json
  def show
  end

  # GET /megacities/new
  def new
    @megacity = Megacity.new
  end

  # GET /megacities/1/edit
  def edit
  end

  # POST /megacities
  # POST /megacities.json
  def create
    @megacity = Megacity.new(megacity_params)

    respond_to do |format|
      if @megacity.save
        format.html { redirect_to @megacity, notice: 'Megacity was successfully created.' }
        format.json { render :show, status: :created, location: @megacity }
      else
        format.html { render :new }
        format.json { render json: @megacity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /megacities/1
  # PATCH/PUT /megacities/1.json
  def update
    respond_to do |format|
      if @megacity.update(megacity_params)
        format.html { redirect_to @megacity, notice: 'Megacity was successfully updated.' }
        format.json { render :show, status: :ok, location: @megacity }
      else
        format.html { render :edit }
        format.json { render json: @megacity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /megacities/1
  # DELETE /megacities/1.json
  def destroy
    @megacity.destroy
    respond_to do |format|
      format.html { redirect_to megacities_url, notice: 'Megacity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_megacity
      @megacity = Megacity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def megacity_params
      params.fetch(:megacity, {})
    end
end
