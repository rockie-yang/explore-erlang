% # Function And Module

% An erlang program normally consists with function which calls each other.
% Functions are grouped together and put in to mudules.

% The module name must the same with the file name
% We can also define varias of attribute like author
% in the begin of the file.
-module(c5_FunctionAndModule).
-author("Rockie Yang").

% All exported functions can be used out side of the module.
% Un-exported functions can be only used inside of the module.

% hello/0  means the function name is hello, with 0 parameter
% double/1 means the function name is double, with 1 parameter

% It could have more than one function with the same name
% but different number of parameter.
-export([hello/0, double/1, fabanacci/1]).

hello() ->
  io:fwrite("Hello, world!\n").

double(Value) ->
  Value * 2.


fabanacci(0) ->
  1;
fabanacci(N) ->
  N * fabanacci(N-1).

% after create erlang source files.
% we can load to erlang by c command (compile)
% c(module)., module is the module name, without the .erl extension

% in this case is like following. It need return ok to annotate success compile
% ```erlang
% c(c5_FunctionAndModule).
% > {ok,c5_FunctionAndModule}
% ```

