class AthletesController < ApplicationController
  before_action :set_athlete, only: [:show, :edit, :update, :destroy, :teams]

  # GET /athletes
  # GET /athletes.json
  def index
    @athletes = Athlete.all
  end

  # GET /athletes/1
  # GET /athletes/1.json
  def show
  end

  # GET /athletes/new
  def new
    @athlete = Athlete.new
  end

  # GET /athletes/1/edit
  def edit
  end

  # POST /athletes
  # POST /athletes.json
  def create
    @athlete = Athlete.new(athlete_params)

    respond_to do |format|
      if @athlete.save
        format.html { redirect_to @athlete, notice: 'Athlete was successfully created.' }
        format.json { render :show, status: :created, location: @athlete }
      else
        format.html { render :new }
        format.json { render json: @athlete.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /athletes/1/team_add?team_id=2
  # (note no real query string, just convenient notation for parameters)
  # ?POST /athletes.json
  def team_add
    #  Convert ids from routing to object
    @athlete = Athlete.find(params[:id])
    @team = Team.find(params[:team])

    unless @athlete.is_on_roster?(@team)
      #  add team to list using << operator
      @athlete.teams << @team
      flash[:notice] = 'Team was successfully added.'
    else
      flash[:error] = 'Athlete was already on roster.'
    end

    # Update Team Captain
    @AthleteTeam = AthletesTeam.find_by(:athlete_id => @athlete.id, :team_id => @team.id)
    @AthleteTeam.update_attributes(:captain => params[:captain], :jerseynumber => params[:jerseynumber], :position => params[:position])


    redirect_to :action => :teams, :id => @athlete
  end

  # POST /athletes/1/team_remove?teams[]=
  def team_remove
    #  Convert ids from routing to object
    @athlete = Athlete.find(params[:id])

    #  Get list of teams to remove from query string
    teams_ids = params[:teams]

    unless teams_ids.blank?
      teams_ids.each do |team_id|
      team = Team.find(team_id)
        if @athlete.is_on_roster?(team)
          logger.info("Removing athlete from team #{team.id}.")
          @athlete.teams.delete(team)
          flash[:notice] = 'Team was successfully deleted.'
        end
      end
    end
    redirect_to :action => :teams, :id => @athlete
  end

  # PATCH/PUT /athletes/1
  # PATCH/PUT /athletes/1.json
  def update
    respond_to do |format|
      if @athlete.update(athlete_params)
        format.html { redirect_to @athlete, notice: 'Athlete was successfully updated.' }
        format.json { render :show, status: :ok, location: @athlete }
      else
        format.html { render :edit }
        format.json { render json: @athlete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /athletes/1
  # DELETE /athletes/1.json
  def destroy
    @athlete.destroy
    respond_to do |format|
      format.html { redirect_to athletes_url, notice: 'Athlete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_athlete
      @athlete = Athlete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def athlete_params
      params.require(:athlete).permit(:firstname, :middlename, :lastname, :nickname, :gender, :dob, :gradyear, :active, :height, :weight, :email, :twitter)
    end
end
