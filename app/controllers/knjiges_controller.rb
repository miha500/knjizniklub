class KnjigesController < ApplicationController
  before_action :set_knjige, only: [:show, :edit, :update, :destroy]

  # GET /knjiges
  # GET /knjiges.json
  def index
    @knjiges = Knjige.all
  end

  # GET /knjiges/1
  # GET /knjiges/1.json
  def show
  end

  # GET /knjiges/new
  def new
    @knjige = Knjige.new
  end

  # GET /knjiges/1/edit
  def edit
  end

  # POST /knjiges
  # POST /knjiges.json
  def create
    @knjige = Knjige.new(knjige_params)

    respond_to do |format|
      if @knjige.save
        format.html { redirect_to @knjige, notice: 'Knjige was successfully created.' }
        format.json { render :show, status: :created, location: @knjige }
      else
        format.html { render :new }
        format.json { render json: @knjige.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /knjiges/1
  # PATCH/PUT /knjiges/1.json
  def update
    respond_to do |format|
      if @knjige.update(knjige_params)
        format.html { redirect_to @knjige, notice: 'Knjige was successfully updated.' }
        format.json { render :show, status: :ok, location: @knjige }
      else
        format.html { render :edit }
        format.json { render json: @knjige.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /knjiges/1
  # DELETE /knjiges/1.json
  def destroy
    @knjige.destroy
    respond_to do |format|
      format.html { redirect_to knjiges_url, notice: 'Knjige was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_knjige
      @knjige = Knjige.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def knjige_params
      params.require(:knjige).permit(:naslov, :avtor, :opis, :datum_izdaje)
    end
end
