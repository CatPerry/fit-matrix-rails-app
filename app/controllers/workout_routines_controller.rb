class WorkoutRoutinesController < ApplicationController
  before_action :set_workout_routine, only: [:show, :edit, :update, :destroy]

  # GET /workout_routines
  # GET /workout_routines.json
  def index
    @workout_routines = WorkoutRoutine.all
    @exercises = Exercise.all
  end

  # GET /workout_routines/1
  # GET /workout_routines/1.json
  def show
    @exercises = Exercise.all
    @workout_routines = WorkoutRoutine.all
  end

  # GET /workout_routines/new
  def new
    @workout_routine = WorkoutRoutine.new
  end

  # GET /workout_routines/1/edit
  def edit
  end

  # POST /workout_routines
  # POST /workout_routines.json
  def create
    @workout_routine = WorkoutRoutine.new(workout_routine_params)

    respond_to do |format|
      if @workout_routine.save
        format.html { redirect_to @workout_routine, notice: 'Workout routine was successfully created.' }
        format.json { render :show, status: :created, location: @workout_routine }
      else
        format.html { render :new }
        format.json { render json: @workout_routine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_routines/1
  # PATCH/PUT /workout_routines/1.json
  def update
    respond_to do |format|
      if @workout_routine.update(workout_routine_params)
        format.html { redirect_to @workout_routine, notice: 'Workout routine was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout_routine }
      else
        format.html { render :edit }
        format.json { render json: @workout_routine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_routines/1
  # DELETE /workout_routines/1.json
  def destroy
    @workout_routine.destroy
    respond_to do |format|
      format.html { redirect_to workout_routines_url, notice: 'Workout routine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout_routine
      @workout_routine = WorkoutRoutine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_routine_params
      params.require(:workout_routine).permit(:name, :exercise_id)
    end
end
