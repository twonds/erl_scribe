-module(scribe_logger).


-export([start/2,
	 log/3]).

-include("scribe_types.hrl").

start(Server, Port) ->
    thrift_client:start_link(Server, 
			     Port, 
			     scribe_thrift, 
			     [{strict_read, false}, 
			      {strict_write, false}, 
			      {framed, true}]).

    
log(Client, Category,  Message) ->    
    thrift_client:call(Client, 'Log', 
		       [[#logEntry{category=Category, 
				   message=Message}]]),
    
    ok.
