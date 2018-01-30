class TasksController < ApplicationController
  def input
  end

  def output
    n = params[:n].to_i
    @marsen_arr = []
    p = (1..n).select { |x| (1..x).select { |y| (x % y).zero? }.size == 2 }
    @marsen_arr = p.lazy.map do |_acc|
      2**_acc - 1
    end.take_while { |x| x < n }.to_a
    @quantity = @marsen_arr.size
  end
end
