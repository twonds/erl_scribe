##
## Makefile
##  
## Made by Christopher Zorn <tofu@thetofu.com>
##
## Started on  Mon Nov  2 16:50:29 2009 Christopher Zorn
## Last update Mon Nov  2 16:50:29 2009 Christopher Zorn
## 

#####################
# Macro Definitions #
#####################
ERL 	= erl
ERLC    = erlc
MAKE 	= make
SHELL	= /bin/sh
RM 	= /bin/rm -rf 	


##############################
# Basic Compile Instructions #
##############################

all:
	thrift --gen erl scribe.thrift
	cp example.erl gen-erl
	erlc gen-erl/*.erl

clean:
	-$(RM) gen-erl
