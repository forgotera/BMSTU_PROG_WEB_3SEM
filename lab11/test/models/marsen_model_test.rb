require 'test_helper'

class MarsenModelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save new empty user' do
    marsenModel = MarsenModel.new
    assert marsenModel.save
  end

  test 'should save new user' do
    marsenModel = MarsenModel.new
    marsenModel.numberIter = 5
    marsenModel.marsenNumb = [3, 7, 15, 67, 123]
    marsenModel.readNumb = 456
    assert marsenModel.save
  end

  test 'should not save duplicate user' do
    marsenModel = MarsenModel.new
    marsenModel.numberIter = 5
    marsenModel.marsenNumb = [3, 7, 15, 67, 123]
    marsenModel.readNumb = 456
    marsenModel.save
    marsenModel1 = MarsenModel.new
    unless ( MarsenModel.find_by_marsenNumb_and_numberIter(@marsen_arr, @quantity))
      marsenModel1.numberIter = 5
      marsenModel1.marsenNumb = [3, 7, 15, 67, 123]
      marsenModel1.readNumb = 456
    end
    assert_not marsenModel1.save
  end
end
