require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    # save_and_open_page
    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_user_receives_error_message
    visit './not_real'

    # save_and_open_page
    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end
end
