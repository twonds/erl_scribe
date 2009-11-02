= Erlang Scribe Logger =

There seems to be a good deal scribe examples and code for php and python. 
However, I could not find much on erlang and scribe. This is an example on how to 
start logging to scribe with erlang. This example is a client thrift connection to a 
local scribe server.

== Install Software needed. ==

You will need to install boost, thrift, and scribe.

Boost - http://www.boost.org/

Thrift - http://incubator.apache.org/thrift/

Scribe - http://github.com/facebook/scribe

= Steps =

NOTE: These steps are in the Makefile. You could also just type `make` and then install the
compiled beams wherever needed.

== Generate code with thrift ==

You will then need to generate the facebook scribe code.

You have to grab facebook fb303.thrift file from the thrift/contrib/fb303/if/ directory.

Then add the scribe.thrift definitions. This is already done for you in this repo in the
file scribe.thrift.

Run `thrift --gen erl scribe.thrift` and that will generate the code in the 'gen-erl' directory.

Compile the code with `erlc -o ebin gen-erl/*.erl`

Then install the beams in an erlang path.

You will then be able to start logging! See example.erl for a logging example.

