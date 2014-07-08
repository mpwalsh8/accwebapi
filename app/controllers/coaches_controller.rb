class CoachesController < ApplicationController
  before_action :set_coach, only: [:show, :edit, :update, :destroy]

  # GET /coaches
  # GET /coaches.json
  def index
    @coaches = Coach.all
  end

  # GET /coaches/1
  # GET /coaches/1.json
  def show
  end

  # GET /coaches/new
  def new
    @coach = Coach.new
  end

  # GET /coaches/1/edit
  def edit
  end

  # GET /coaches/1/teams
  def teams
    @coach = Coach.find(params[:id])
    @teams = @coach.teams
  end

  # POST /coaches
  # POST /coaches.json
  def create
    @coach = Coach.new(coach_params)

    respond_to do |format|
      if @coach.save
        format.html { redirect_to @coach, notice: 'Coach was successfully created.' }
        format.json { render :show, status: :created, location: @coach }
      else
        format.html { render :new }
        format.json { render json: @coach.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /coaches/1/team_add?team_id=2
  # (note no real query string, just convenient notation for parameters)
  # ?POST /coaches.json
  def team_add
    #  Convert ids from routing to object
    @coach = Coach.find(params[:id])
    @team = Team.find(params[:team])

    unless @coach.is_on_staff?(@team)
      #  add team to list using << operator
      @coach.teams << @team
      flash[:notice] = 'Team was successfully added.'
    else
      flash[:error] = 'Coach was already on staff.'
    end

    # Update Head Coach
    @CoachTeam = CoachesTeam.find_by(:coach_id => @coach.id, :team_id => @team.id)
    @CoachTeam.update_attributes(:headcoach => params[:headcoach])


    redirect_to :action => :teams, :id => @coach
  end

  # POST /coaches/1/team_remove?teams[]=
  def team_remove
    #  Convert ids from routing to object
    @coach = Coach.find(params[:id])

    #  Get list of teams to remove from query string
    teams_ids = params[:teams]

    unless teams_ids.blank?
      teams_ids.each do |team_id|
      team = Team.find(team_id)
        if @coach.is_on_staff?(team)
          logger.info("Removing coach from team #{team.id}.")
          @coach.teams.delete(team)
          flash[:notice] = 'Team was successfully deleted.'
        end
      end
    end
    redirect_to :action => :teams, :id => @coach
  end

  # PATCH/PUT /coaches/1
  # PATCH/PUT /coaches/1.json
  def update
    respond_to do |format|
      if @coach.update(coach_params)
        format.html { redirect_to @coach, notice: 'Coach was successfully updated.' }
        format.json { render :show, status: :ok, location: @coach }
      else
        format.html { render :edit }
        format.json { render json: @coach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coaches/1
  # DELETE /coaches/1.json
  def destroy
    @coach.destroy
    respond_to do |format|
      format.html { redirect_to coaches_url, notice: 'Coach was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coach
      @coach = Coach.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coach_params
      params.require(:coach).permit(:firstname, :middlename, :lastname, :nickname, :active, :email, :twitter)
    end
end
