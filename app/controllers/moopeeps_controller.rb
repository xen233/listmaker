class MoopeepsController < ApplicationController
  before_action :set_moopeep, only: [:show, :edit, :update, :destroy]

  # GET /moopeeps
  # GET /moopeeps.json
  def index
    @moopeeps = Moopeep.all

    respond_to do |format|
      format.html
      format.csv { render text: @moopeeps.to_csv }
    end
  end

  # GET /moopeeps/1
  # GET /moopeeps/1.json
  def show
  end

  # GET /moopeeps/new
  def new
    @moopeep = Moopeep.new
  end

  # GET /moopeeps/1/edit
  def edit
  end

  # POST /moopeeps
  # POST /moopeeps.json
  def create
    @moopeep = Moopeep.new(moopeep_params)

    respond_to do |format|
      if @moopeep.save
        format.html { redirect_to @moopeep, notice: 'Moopeep was successfully created.' }
        format.json { render :show, status: :created, location: @moopeep }
      else
        format.html { render :new }
        format.json { render json: @moopeep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moopeeps/1
  # PATCH/PUT /moopeeps/1.json
  def update
    respond_to do |format|
      if @moopeep.update(moopeep_params)
        format.html { redirect_to @moopeep, notice: 'Moopeep was successfully updated.' }
        format.json { render :show, status: :ok, location: @moopeep }
      else
        format.html { render :edit }
        format.json { render json: @moopeep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moopeeps/1
  # DELETE /moopeeps/1.json
  def destroy
    @moopeep.destroy
    respond_to do |format|
      format.html { redirect_to moopeeps_url, notice: 'Moopeep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    Moopeep.import(params[:file])
    redirect_to moopeeps_path, notice: "file uploaded successfully"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moopeep
      @moopeep = Moopeep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moopeep_params
      params.require(:moopeep).permit(:username, :firstname, :surname, :email)
    end
end
