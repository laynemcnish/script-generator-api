class ScriptsController < ApplicationController
  before_action :set_script, only: [:show, :update, :destroy]

  # GET /scripts
  def index
    @scripts = Script.all

    render json: @scripts
  end

  # GET /scripts/1
  def show
    render json: @script
  end

  # POST /scripts
  def create
    @script = Script.new(script_params)

    if @script.save
      render json: @script, status: :created, location: @script
    else
      render json: @script.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /scripts/1
  def update
    if @script.update(script_params)
      render json: @script
    else
      render json: @script.errors, status: :unprocessable_entity
    end
  end

  # DELETE /scripts/1
  def destroy
    @script.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_script
      @script = Script.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def script_params
      params.require(:script).permit(:uuid, :name, :notes, :greeting)
    end
end
