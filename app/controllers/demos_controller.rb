class DemosController < ApplicationController
  before_action :set_demo, only: [:show, :update, :destroy]

  # GET /demos
  def index
    @demos = Demo.all

    render json: @demos
  end

  # GET /demos/1
  def show
    render json: @demo
  end

  # POST /demos
  def create
    @demo = Demo.new(demo_params)

    if @demo.save
      render json: @demo, status: :created, location: @demo
    else
      render json: @demo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /demos/1
  def update
    if @demo.update(demo_params)
      render json: @demo
    else
      render json: @demo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /demos/1
  def destroy
    @demo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demo
      @demo = Demo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def demo_params
      params.require(:demo).permit(:name, :email, :phone)
    end
end
