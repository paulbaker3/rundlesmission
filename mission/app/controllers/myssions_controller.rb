class MyssionsController < ApplicationController
  before_action :set_myssion, only: [:show, :edit, :update, :destroy]

  # GET /myssions
  # GET /myssions.json
  def index
    @myssions = Myssion.all
  end

  # GET /myssions/1
  # GET /myssions/1.json
  def show
  end

  # GET /myssions/new
  def new
    @myssion = Myssion.new
  end

  # GET /myssions/1/edit
  def edit
  end

  # POST /myssions
  # POST /myssions.json
  def create
    @myssion = Myssion.new(myssion_params)

    respond_to do |format|
      if @myssion.save
        format.html { redirect_to @myssion, notice: 'Myssion was successfully created.' }
        format.json { render :show, status: :created, location: @myssion }
      else
        format.html { render :new }
        format.json { render json: @myssion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myssions/1
  # PATCH/PUT /myssions/1.json
  def update
    respond_to do |format|
      if @myssion.update(myssion_params)
        format.html { redirect_to @myssion, notice: 'Myssion was successfully updated.' }
        format.json { render :show, status: :ok, location: @myssion }
      else
        format.html { render :edit }
        format.json { render json: @myssion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myssions/1
  # DELETE /myssions/1.json
  def destroy
    @myssion.destroy
    respond_to do |format|
      format.html { redirect_to myssions_url, notice: 'Myssion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myssion
      @myssion = Myssion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myssion_params
      params.require(:myssion).permit(:description, :risk_value, :location)
    end
end
