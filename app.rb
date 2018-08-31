require 'sinatra'
set :port, 3001
set :bind, '0.0.0.0'


get '/' do
@day = Date.today.strftime("%A")
@daynum = Date.today.strftime("%w").to_i
@friday = 5

if @day == "Friday"
@time = Time.now.strftime("%H").to_i

if @time < 17
":beers: Hello Ivan, its Friday!, but its not time yet there are " + (17-@time).to_s + "hours left"
else
"I know that's you Oana, or Cosmin or Raz or Joel, go forth to the beer fridge!!! :beer:"
end
else
'Hello ' + @user_name + '! The beer Fridge is crap on' + @day + 'Please wait' + (@friday - @daynum) 
end
end
