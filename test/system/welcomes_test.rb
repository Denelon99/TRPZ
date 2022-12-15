require "application_system_test_case"

class WelcomesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit welcome_path
  
    assert_selector "h1", text: "Welcome"
  end
end
