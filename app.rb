require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do 
    @number = params[:number]
    ((@number.to_i)**2).to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    string_val = ""
    @num.times do
      string_val += @phrase 
    end
    string_val
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word1 +" " +@word2 +" "+ @word3+" " +@word4+" " +@word5+"."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == 'add'
      (@number1.to_i + @number2.to_i).to_s
    elsif @operation == 'subtract'
      (@number1.to_i - @number2.to_i).to_s
    elsif @operation == 'multiply'
      (@number1.to_i * @number2.to_i).to_s
    else
      (@number1.to_i / @number2.to_i).to_s
    end

  end


end
