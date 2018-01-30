class InputController < ApplicationController
  def index
    render layout: false
  end

  def answer
    n = params[:n].to_i
    p = (1..n).select { |x| (1..x).select { |y| (x % y).zero? }.size == 2 }
    @marsen_arr = p.lazy.map do |_acc|
      2**_acc - 1
    end.take_while { |x| x < n }.to_a
    @quantity = @marsen_arr.size
    respond_to do |format|
      format.html
      format.json do
        render json:
                   { value: @quantity, value1: @marsen_arr }
      end
    end
  end
end
