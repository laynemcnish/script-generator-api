class ScriptOptionsController < ApplicationController
  before_action :set_script_option, only: [:show, :update, :destroy]

  # GET /script_options
  def index
    @script_options = ScriptOption.all

    render json: @script_options
  end

  # GET /script_options/1
  def show
    render json: @script_option
  end

  # POST /script_options
  def create
    @script_option = ScriptOption.new(script_option_params)

    if @script_option.save
      render json: @script_option, status: :created, location: @script_option
    else
      render json: @script_option.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /script_options/1
  def update
    if @script_option.update(script_option_params)
      render json: @script_option
    else
      render json: @script_option.errors, status: :unprocessable_entity
    end
  end

  # DELETE /script_options/1
  def destroy
    @script_option.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_script_option
      @script_option = ScriptOption.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def script_option_params
      params.require(:script_option).permit(:script_id, :additional_options, :polymorphic)
    end
end
