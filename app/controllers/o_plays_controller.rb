class OPlaysController < ApplicationController
  before_action :set_o_play, only: [:show, :edit, :update, :destroy]

  # GET /o_plays
  # GET /o_plays.json
  def index
    @o_plays = OPlay.all
    @o_play = OPlay.new
  	@o_formations = OPlay.all
  end

  # GET /o_plays/1
  # GET /o_plays/1.json
  def show
  end

  # GET /o_plays/new
  def new
    @o_play = OPlay.new
  end

  # GET /o_plays/1/edit
  def edit
  end

  # POST /o_plays
  # POST /o_plays.json
  def create
    @o_play = OPlay.new(o_play_params)

    respond_to do |format|
      if @o_play.save
        format.html { redirect_to o_plays_url, notice: 'O play was successfully created.' }
        format.json { render action: 'show', status: :created, location: @o_play }
      else
        format.html { render action: 'new' }
        format.json { render json: @o_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /o_plays/1
  # PATCH/PUT /o_plays/1.json
  def update
    respond_to do |format|
      if @o_play.update(o_play_params)
        format.html { redirect_to @o_play, notice: 'O play was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @o_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /o_plays/1
  # DELETE /o_plays/1.json
  def destroy
    @o_play.destroy
    respond_to do |format|
      format.html { redirect_to o_plays_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_o_play
      @o_play = OPlay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def o_play_params
      params.require(:o_play).permit(:name, :picture, :formation, :play_type)
    end
end
