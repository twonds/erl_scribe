-module(example).


-export([run/0]).


run() ->
    {ok, C} = thrift_client:start_link("localhost", 1463, scribe),

    io:format("Connected ~p~n", [C]),

    thrift_client:call(C, getName, []),
    
    

    ok.
