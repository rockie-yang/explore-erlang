%%%-------------------------------------------------------------------
%%% @author yangyoujiang
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Feb 2015 8:40 PM
%%%-------------------------------------------------------------------
-module(fabanacci).
-author("yangyoujiang").

%% API
-export([fabanacci/1]).

fabanacci(0) -> 1;

fabanacci(N) -> N * fabanacci(N - 1).




