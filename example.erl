-module(example).


-export([run/0]).

-include("scribe_types.hrl").

run() ->
    {ok, C} = thrift_client_util:new("localhost", 1463, scribe_thrift,
                       [{strict_read, false}, 
                        {strict_write, false}, 
                        {framed, true}]),


    io:format("Connected ~p~n", [C]),
    
    Res = thrift_client:call(C, 'Log', [[#logEntry{category="rest", message="This is a test"}]]),
    io:format("Log result ~p ~n", [Res]),

    Name = thrift_client:call(C, 'getStatus', []),
    io:format("Name ~p~n",[Name]),
    ok.
