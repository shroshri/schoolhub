class StinsfosController < ApplicationController
  before_action :set_stinsfo, only: [:show, :edit, :update, :destroy]

  # GET /stinsfos
  # GET /stinsfos.json
  def index
    @stinsfos = Stinsfo.all
  end

  # GET /stinsfos/1
  # GET /stinsfos/1.json
  def show
  end

  # GET /stinsfos/new
  def new
    @stinsfo = Stinsfo.new
  end

  # GET /stinsfos/1/edit
  def edit
  end

  # POST /stinsfos
  # POST /stinsfos.json
  def create
    @stinsfo = Stinsfo.new(stinsfo_params)

    respond_to do |format|
      if @stinsfo.save
        format.html { redirect_to @stinsfo, notice: 'Stinsfo was successfully created.' }
        format.json { render :show, status: :created, location: @stinsfo }
      else
        format.html { render :new }
        format.json { render json: @stinsfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stinsfos/1
  # PATCH/PUT /stinsfos/1.json
  def update
    respond_to do |format|
      if @stinsfo.update(stinsfo_params)
        format.html { redirect_to @stinsfo, notice: 'Stinsfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @stinsfo }
      else
        format.html { render :edit }
        format.json { render json: @stinsfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stinsfos/1
  # DELETE /stinsfos/1.json
  def destroy
    @stinsfo.destroy
    respond_to do |format|
      format.html { redirect_to stinsfos_url, notice: 'Stinsfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stinsfo
      @stinsfo = Stinsfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stinsfo_params
      params.require(:stinsfo).permit(:name, :place)
    end
end
