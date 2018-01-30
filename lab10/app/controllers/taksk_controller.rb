class TakskController < ApplicationController
  before_action :parse_params, only: :answer
  def index; end

  def answer
    p = (1..@n).select { |x| (1..x).select { |y| (x % y).zero? }.size == 2 }
    marsen_arr = p.lazy.map do |_acc|
      2**_acc - 1
    end.take_while { |x| x < @n }.to_a
    k = 0
    date = marsen_arr.map { |elem| k += 1; { number: elem, quantity: k } }
    respond_to do |format|
      format.xml do
        render xml: date.to_xml
      end
      format.rss { render xml: date.to_xml }
    end
  end

  protected

  def parse_params
    @n = params[:n].to_i
  end
end
