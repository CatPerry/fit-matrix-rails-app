class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]
  include Placeholder
  require 'json'
  require 'rubygems'
  require 'httparty'

  def index
    @exercises = Exercise.all
    @file = File.read('config/exercise.json')
    @data = JSON.parse(@file)
    
    @workout_routines = WorkoutRoutine.all
  end

  # GET /exercises/1
  # GET /exercises/1.json
  def show
    @exercises = Exercise.all
    @file = File.read('config/exercise.json')
    @data = JSON.parse(@file)
    
  end

  # GET /exercises/new
  def new
    @exercise = Exercise.new
    # @list = JSON.load File.read('config/exercise.json')
  end

  def  experimental
    @exercises = Exercise.all
  end

  # GET /exercises/1/edit
  def edit
    @exercise = Exercise.find(params[:id])
  end

  # POST /exercises
  # POST /exercises.json
  def create
    @exercise = Exercise.new(exercise_params)

    respond_to do |format|
      if @exercise.save
        format.html { redirect_to @exercise, notice: 'Workout routine was successfully created.' }
        format.json { render :show, status: :created, location: @exercise }
      else
        format.html { render :new }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercises/1
  # PATCH/PUT /exercises/1.json
  def update
    respond_to do |format|
      if @exercise.update(exercise_params)
        format.html { redirect_to @exercise, notice: 'Workout routine was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise }
      else
        format.html { render :edit }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercises/1
  # DELETE /exercises/1.json
  def destroy
    @exercise.destroy
    respond_to do |format|
      format.html { redirect_to exercises_url, notice: 'Workout routine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def vidappend
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_params
      params.require(:exercise).permit(:choice, :description, :reps, :sets, :difficulty, :image, :bodypart, :muscle_type)
    end
    
  # after_initialize :set_defaults
  # this is a second way to set a default, besides doing it in the model as we did for toggle status
  # this is ashortcut wayt ot say if image is nil then set imgage to items provided. 
  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end

end
