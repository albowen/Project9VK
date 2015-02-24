class Project9vksController < ApplicationController
  before_action :set_project9vk, only: [:show, :edit, :update, :destroy]

  # GET /project9vks
  # GET /project9vks.json
  def index
    @project9vks = Project9vk.all
  end

  # GET /project9vks/1
  # GET /project9vks/1.json
  def show
  end

  # GET /project9vks/new
  def new
    @project9vk = Project9vk.new
  end

  # GET /project9vks/1/edit
  def edit
  end

  # POST /project9vks
  # POST /project9vks.json
  def create
    @project9vk = Project9vk.new(project9vk_params)

    respond_to do |format|
      if @project9vk.save
        format.html { redirect_to @project9vk, notice: 'Project9vk was successfully created.' }
        format.json { render :show, status: :created, location: @project9vk }
      else
        format.html { render :new }
        format.json { render json: @project9vk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project9vks/1
  # PATCH/PUT /project9vks/1.json
  def update
    respond_to do |format|
      if @project9vk.update(project9vk_params)
        format.html { redirect_to @project9vk, notice: 'Project9vk was successfully updated.' }
        format.json { render :show, status: :ok, location: @project9vk }
      else
        format.html { render :edit }
        format.json { render json: @project9vk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project9vks/1
  # DELETE /project9vks/1.json
  def destroy
    @project9vk.destroy
    respond_to do |format|
      format.html { redirect_to project9vks_url, notice: 'Project9vk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project9vk
      @project9vk = Project9vk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project9vk_params
      params.require(:project9vk).permit(:title, :about, :date, :attendance, :done)
    end
end
