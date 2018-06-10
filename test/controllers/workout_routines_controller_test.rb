require 'test_helper'

class WorkoutRoutinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workout_routine = workout_routines(:one)
  end

  test "should get index" do
    get workout_routines_url
    assert_response :success
  end

  test "should get new" do
    get new_workout_routine_url
    assert_response :success
  end

  test "should create workout_routine" do
    assert_difference('WorkoutRoutine.count') do
      post workout_routines_url, params: { workout_routine: {  } }
    end

    assert_redirected_to workout_routine_url(WorkoutRoutine.last)
  end

  test "should show workout_routine" do
    get workout_routine_url(@workout_routine)
    assert_response :success
  end

  test "should get edit" do
    get edit_workout_routine_url(@workout_routine)
    assert_response :success
  end

  test "should update workout_routine" do
    patch workout_routine_url(@workout_routine), params: { workout_routine: {  } }
    assert_redirected_to workout_routine_url(@workout_routine)
  end

  test "should destroy workout_routine" do
    assert_difference('WorkoutRoutine.count', -1) do
      delete workout_routine_url(@workout_routine)
    end

    assert_redirected_to workout_routines_url
  end
end
