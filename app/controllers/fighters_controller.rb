class FightersController < ApplicationController
  before_action :set_fighter, only: %i[ show update destroy ]

  # GET /fighters
  def index
    @fighters = Fighter.all

    render json: @fighters
  end

  # GET /fighters/1
  def show
    render json: @fighter
  end

  # POST /fighters
  def create
    @fighter = Fighter.new(fighter_params)

    if @fighter.save
      render json: @fighter, status: :created, location: @fighter
    else
      render json: @fighter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fighters/1
  def update
    if @fighter.update(fighter_params)
      render json: @fighter
    else
      render json: @fighter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fighters/1
  def destroy
    @fighter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fighter
      @fighter = Fighter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fighter_params
      params.require(:fighter).permit(:character, :L5, :M5, :H5, :S5, :L2, :M2, :H2, :S2, :JL, :JM, :JH, :JS, :J2H, :M6)
    end
end
