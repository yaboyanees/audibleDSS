class TeamHasOsController < ApplicationController
  before_action :set_team_has_o, only: [:show, :edit, :update, :destroy]

  # GET /team_has_os
  # GET /team_has_os.json
  def index
    @team_has_os = TeamHasO.all
    @team_has_o = TeamHasO.new
  end

  # GET /team_has_os/1
  # GET /team_has_os/1.json
  def show
  end

  # GET /team_has_os/new
  def new
    @team_has_o = TeamHasO.new
  end

  # GET /team_has_os/1/edit
  def edit
  end

  # POST /team_has_os
  # POST /team_has_os.json
  def create
    @team_has_o = TeamHasO.new(team_has_o_params)

    respond_to do |format|
      if @team_has_o.save
        format.html { redirect_to @team_has_o, notice: 'Team has o was successfully created.' }
        format.json { render action: 'show', status: :created, location: @team_has_o }
      else
        format.html { render action: 'new' }
        format.json { render json: @team_has_o.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_has_os/1
  # PATCH/PUT /team_has_os/1.json
  def update
    respond_to do |format|
      if @team_has_o.update(team_has_o_params)
        format.html { redirect_to @team_has_o, notice: 'Team has o was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @team_has_o.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_has_os/1
  # DELETE /team_has_os/1.json
  def destroy
    @team_has_o.destroy
    respond_to do |format|
      format.html { redirect_to team_has_os_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_has_o
      @team_has_o = TeamHasO.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_has_o_params
      params.require(:team_has_o).permit(:team_id, :oPlay_id)
    end
end
