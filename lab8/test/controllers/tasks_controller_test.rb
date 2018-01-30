require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should get input ' do
    get tasks_index_url
    assert_response :success
  end

  test 'should get answer' do
    get tasks_answer_url params: { n: 256 }
    assert_response :success
  end
#нижнее подчеркивание вместо пробелов но их надо ставить подчеркивания
# get tasks_answer_url-куда передать params: { n: 456 }-что передать
# get tasks_answer_url из root
  test 'number of iteration' do
    get tasks_answer_url params: { n: 456 }
    assert_equal assigns[:quantity], 4
  end

  test  'marsen number for 456' do
    get tasks_answer_url params: { n: 456}
    assert_equal assigns[:marsen_arr], [3, 7, 31, 127]
  end
end
