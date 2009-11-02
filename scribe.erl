%%
%% An erlang scribe logger interface.
-module(scribe).

-export([function_info/2]).

-include("scribe.hrl").


%% getStatus - Gets the status of the service
function_info(getStatus, params_type) ->
    {struct, []};

%% getName - Gets the name of the service
function_info(getName, params_type) ->
    {struct, []};

function_info(log, params_type) ->
    {struct, [#logEntry{}]};

function_info(_Name, _ParamsType) ->
    %% unhandled function info call
    undef.


