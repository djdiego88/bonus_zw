require 'sinatra'

#/istriangle?a=1&b=2&c=2
get '/istriangle' do
    @a = params[:a]
    @b = params[:b]
    @c = params[:c]

    valor = false

    if(@a > 0 && @b > 0 && @c > 0)
        valor = true
    end
    
    "#{valor}"
end
