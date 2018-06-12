class MatrixController < ApplicationController
  require 'json'
  require 'rubygems'
  require 'httparty'

  def main
    @exercises = Exercise.all
    @file = File.read('config/exercise.json')
    @data = JSON.parse(@file)

    $quizzes = Quiz.all

        
  end

  def index   
  end

  # GET /exercises/1
  # GET /exercises/1.json
  def show
    
  end

  def vidappend  
  end

  def results
    @file = File.read('config/exercise.json')
    @data = JSON.parse(@file)
    
    # @image_data = JSON.parse(params[:json])['exercises']['exercise']['image']
    # params[:exercises][:exercise][:image] = @exercises.convert_from_base64(image_data)
    
   @result = []
    @matrixChoices = []
    $quizzes = Quiz.all
    
    $quizzes.each do |quiz|
      @data['exercises'].each do | exercise|
      id = quiz.id
      
      end
    end
  end
end
