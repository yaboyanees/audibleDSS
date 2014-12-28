class DPlaysController < ApplicationController
  before_action :set_d_play, only: [:show, :edit, :update, :destroy]

  # GET /d_plays
  # GET /d_plays.json
  def index
    @d_plays = DPlay.all
  end

  # GET /d_plays/1
  # GET /d_plays/1.json
  def show
  end

  # GET /d_plays/new
  def new
    @d_play = DPlay.new
  end

  # GET /d_plays/1/edit
  def edit
  end

  # POST /d_plays
  # POST /d_plays.json
  def create
    @d_play = DPlay.new(d_play_params)

    respond_to do |format|
      if @d_play.save
        format.html { redirect_to @d_play, notice: 'D play was successfully created.' }
        format.json { render action: 'show', status: :created, location: @d_play }
      else
        format.html { render action: 'new' }
        format.json { render json: @d_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d_plays/1
  # PATCH/PUT /d_plays/1.json
  def update
    respond_to do |format|
      if @d_play.update(d_play_params)
        format.html { redirect_to @d_play, notice: 'D play was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @d_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d_plays/1
  # DELETE /d_plays/1.json
  def destroy
    @d_play.destroy
    respond_to do |format|
      format.html { redirect_to d_plays_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_d_play
      @d_play = DPlay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def d_play_params
      params.require(:d_play).permit(:name, :picture, :formation, :play_type)
    end
end
