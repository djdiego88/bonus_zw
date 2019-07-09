require 'sinatra'

#/istriangle?a=1&b=2&c=2
#/istriangle?a=number&b=number&c=number
get '/istriangle' do
    a = params[:a].to_i
    b = params[:b].to_i
    c = params[:c].to_i

    valor = false

    if(a > 0 && b > 0 && c > 0)
        aplusb = a + b
        aplusc = a + c
        bplusc = b + c

        if(aplusb > c && aplusc > b && bplusc > a)
            valor = true
        end
    end
    
    "#{valor}"
end
