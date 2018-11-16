class LocalDirectoriesController < ApplicationController
  before_action :set_local_directory, only: [:show, :edit, :update, :destroy]

  # GET /local_directories
  # GET /local_directories.json
  def index
    @local_directories = LocalDirectory.all
  end

  # GET /local_directories/1
  # GET /local_directories/1.json
  def show
  end

  # GET /local_directories/new
  def new
    @local_directory = LocalDirectory.new
  end

  # GET /local_directories/1/edit
  def edit
  end

  # POST /local_directories
  # POST /local_directories.json
  def create
    @local_directory = LocalDirectory.new(local_directory_params)

    respond_to do |format|
      if @local_directory.save
        format.html { redirect_to @local_directory, notice: 'Local directory was successfully created.' }
        format.json { render :show, status: :created, location: @local_directory }
      else
        format.html { render :new }
        format.json { render json: @local_directory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /local_directories/1
  # PATCH/PUT /local_directories/1.json
  def update
    respond_to do |format|
      if @local_directory.update(local_directory_params)
        format.html { redirect_to @local_directory, notice: 'Local directory was successfully updated.' }
        format.json { render :show, status: :ok, location: @local_directory }
      else
        format.html { render :edit }
        format.json { render json: @local_directory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_directories/1
  # DELETE /local_directories/1.json
  def destroy
    @local_directory.destroy
    respond_to do |format|
      format.html { redirect_to local_directories_url, notice: 'Local directory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local_directory
      @local_directory = LocalDirectory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def local_directory_params
      params.require(:local_directory).permit(:path)
    end
end
