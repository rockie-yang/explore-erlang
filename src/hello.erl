%%%-------------------------------------------------------------------
%%% @author yangyoujiang
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Feb 2015 10:42 PM
%%%-------------------------------------------------------------------
-module(hello).
-author("yangyoujiang").

%% API
-export([hello_world/0]).

hello_world() -> io:fwrite("hello world").
