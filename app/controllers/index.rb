get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do

  if params[:user_input] == params[:user_input].upcase
    reply = "No, not since #{rand(100)+1900}!"
  else
    reply = "Speak up, kiddo!"
  end

  redirect "/?grandma=#{reply}"
end
