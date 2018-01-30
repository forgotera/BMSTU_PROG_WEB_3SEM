require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  fixtures :users
  test 'login and browsse site ' do
    get '/'
    assert_response :success
    post_via_redirect '/', login: users().login,
                           password: users.password
    assert_equal tasks_input_path, path
  end
end
