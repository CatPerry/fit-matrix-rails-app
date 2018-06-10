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
    # @exercise = @exercises['exercise'] 
    @result = []
    @matrixChoices = []

    

    $quizzes.each do |quiz|
      @data['exercises'].each do | exercise|
      id = quiz.id
      
      # if (params["q#{id}".to_sym] == "upper")
      # @result.push()["option_#{params["q#{id}".to_sym]}"])

      end
    end
  end
    # $quizzes = Exercise.where(bodypart:params[:bodypart], difficulty:params[:difficulty])
    # @result = []
    # @matrixchoices = []
    # @correct = []
  
      # if (params["q#{id}".to_sym] == "upper")
    #   $quizzes.each do |quiz|

    # # $matrixchoices.each do |exercise| 
		#  @data['exercises'].each do | exercise|	
		# 	id = exercise['exercise']['pk']
		# 	@choice = Exercise.find(params["pk#{id}".to_sym]).choice
		# 	if (@choice == params["q#{id}".to_sym]) 
		# 		@matrixchoices.push(Exercise.find(params["pk#{id}".to_sym]).name)

		# 		@result.push(Exercise.find(params["pk#{id}".to_sym])["option_#{params["q#{id}".to_sym]}"])
		# 		@correct.push(true)
	
		# 	else
		# 		@matrixchoices.push(Exercise.find(params["pk#{id}".to_sym]).description)
		# 		@result.push(Exercise.find(params["pk#{id}".to_sym])["option_#{params["q#{id}".to_sym]}"] )
		# 		@correct.push(false)
		  

end
