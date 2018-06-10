require "application_system_test_case"

class WorkoutRoutinesTest < ApplicationSystemTestCase
  setup do
    @workout_routine = workout_routines(:one)
  end

  test "visiting the index" do
    visit workout_routines_url
    assert_selector "h1", text: "Workout Routines"
  end

  test "creating a Workout routine" do
    visit workout_routines_url
    click_on "New Workout Routine"

    click_on "Create Workout routine"

    assert_text "Workout routine was successfully created"
    click_on "Back"
  end

  test "updating a Workout routine" do
    visit workout_routines_url
    click_on "Edit", match: :first

    click_on "Update Workout routine"

    assert_text "Workout routine was successfully updated"
    click_on "Back"
  end

  test "destroying a Workout routine" do
    visit workout_routines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workout routine was successfully destroyed"
  end
end
