.PHONY: doc test

all: compile

compile:
	@rebar compile

clean:
	@rebar clean

test: compile
	@rebar eunit skip_deps=true

doc:
	rebar skip_deps=true doc

initenv:
	rebar clean
	rebar delete-deps
	rebar get-deps
	rebar compile

run:
	rebar clean compile
	@erl -pa deps/*/ebin -pa ebin
