require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    solution = params[:number].to_i*params[:number].to_i
    "#{solution}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
    # @number.times do
    #   "#{@phrase}"
    # end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  get '/:operation/:number1/:number2' do
    @operator = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operator == "add"
      @solution = @num1 + @num2
    elsif @operator == "subtract"
      @solution = @num1 - @num2
    elsif @operator == "multiply"
      @solution = @num1 * @num2
    else
      @solution = @num1 / @num2
    end
    "#{@solution}"
  end

end
