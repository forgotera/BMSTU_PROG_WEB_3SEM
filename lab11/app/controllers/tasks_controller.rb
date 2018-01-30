class TasksController < ApplicationController
  before_action :parse_params, only: :output
  def input; end

  def parse_params
    @n = params[:n].to_i
  end

  def add_record_table
    res = MarsenModel.create marsenNumb: @marsen_arr, numberIter: @quantity,
                             readNumb: @n
    @result << ActiveSupport::JSON.decode(res.marsenNumb)
    @result << ActiveSupport::JSON.decode(res.numberIter.to_s)
    res.save
  end

  def output
    @result = []
    if (res = MarsenModel.find_by_marsenNumb_and_numberIter(@marsen_arr, @quantity))
      @result << ActiveSupport::JSON.decode(res.marsenNumb)
      @result << ActiveSupport::JSON.decode(res.numberIter.to_s)
    else
      to_count_to_number_marsen
      add_record_table
    end
  end

  def results
    @result = MarsenModel.all
    render xml: @result
  end

  def to_count_to_number_marsen
    @marsen_arr = []
    p = (1..@n).select { |x| (1..x).select { |y| (x % y).zero? }.size == 2 }
    @marsen_arr = p.lazy.map do |_acc|
      2**_acc - 1
    end.take_while { |x| x < @n }.to_a
    @quantity = @marsen_arr.size
  end

  def to_clean_bd
    MarsenModel.destroy_all
    redirect_to clean.erb
  end
end
