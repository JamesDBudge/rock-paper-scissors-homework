require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/RPSGame.rb')

also_reload('./models/*')

get '/play' do
  erb(:play)
end

get '/play/:hand1' do
  @hand1 = params[:hand1]
  erb(:hand1)
end

get '/play/:hand1/:hand2' do
  @winner = "#{RPSGame.check_win(params[:hand1], params[:hand2])}"
  erb(:winner)
end
