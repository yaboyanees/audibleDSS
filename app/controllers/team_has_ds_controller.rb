class TeamHasDsController < ApplicationController
  before_action :set_team_has_d, only: [:show, :edit, :update, :destroy]

  # GET /team_has_ds
  # GET /team_has_ds.json
  def index
    @team_has_ds = TeamHasD.all
    @team_has_d = TeamHasD.new
  end

  # GET /team_has_ds/1
  # GET /team_has_ds/1.json
  def show
  end

  # GET /team_has_ds/new
  def new
    @team_has_d = TeamHasD.new
  end

  # GET /team_has_ds/1/edit
  def edit
  end

  # POST /team_has_ds
  # POST /team_has_ds.json
  def create
    @team_has_d = TeamHasD.new(team_has_d_params)

    respond_to do |format|
      if @team_has_d.save
        format.html { redirect_to @team_has_d, notice: 'Team has d was successfully created.' }
        format.json { render action: 'show', status: :created, location: @team_has_d }
      else
        format.html { render action: 'new' }
        format.json { render json: @team_has_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_has_ds/1
  # PATCH/PUT /team_has_ds/1.json
  def update
    respond_to do |format|
      if @team_has_d.update(team_has_d_params)
        format.html { redirect_to @team_has_d, notice: 'Team has d was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @team_has_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_has_ds/1
  # DELETE /team_has_ds/1.json
  def destroy
    @team_has_d.destroy
    respond_to do |format|
      format.html { redirect_to team_has_ds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_has_d
      @team_has_d = TeamHasD.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_has_d_params
      params.require(:team_has_d).permit(:team_id, :dPlay_id)
    end
end
