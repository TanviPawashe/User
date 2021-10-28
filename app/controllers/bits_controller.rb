class BitsController < ApplicationController
  before_action :set_bit, only: [:show, :update, :destroy]

  # GET /bits
  def index
    @bits = Bit.all

    render json: @bits
  end

  # GET /bits/1
  def show
    render json: @bit
  end

  # POST /bits
  def create
    @bit = Bit.new(bit_params)

    if @bit.save
      render json: @bit, status: :created, location: @bit
    else
      render json: @bit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bits/1
  def update
    if @bit.update(bit_params)
      render json: @bit
    else
      render json: @bit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bits/1
  def destroy
    @bit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bit
      @bit = Bit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bit_params
      params.require(:bit).permit(:title, :headline, :footline, :description)
    end
end
