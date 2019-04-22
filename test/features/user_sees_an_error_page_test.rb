require './test/test_helper'

class PageNotFoundTest < CapybaraTestCase

  def test_user_sees_about_page
    visit '/blog'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end

end
