%% # Recursion

%% Recusion means a function call itself directly or indirectly.
%% Recursion is one of the most import ways to construct programms.

-module(c12_Recursion).
-export([sum/1, average/1]).

%% ## Direct Recursive Function

%% This is a simple resursive function to get the sum of a List.
%% sum will invoke itself until the List is empty.
sum([]) -> 0;
sum([Head | Tail]) -> Head + sum(Tail).

%% Notice in the sum function the recursive expression is
%% ```erlang
%% Head + sum(Tail).
%% ```
%% It is not directly invoke the function itself.

%% ## Tail Recursive Function

%% Tail recursive function means that the function
%% only call it self in the last expression.

%% Here we design a helper function average_acc
%% which only calls itself in the last expression.
%% The intermittant values are hold in function parameters

average_acc([], Acc, N) ->
  Acc / N;
average_acc([Head | Tail], Acc, N) ->
  average_acc(Tail, Acc + Head, N + 1).

average(List) ->
  average_acc(List, 0, 0).

%% ## Direct or Tail Recursive Function

%% In some function language like Scala,
%% Tail recursive function is more effient than direct recursive function.
%% Since the function stack can be reused during invocation.
%% It is also true in Erlang before.


%% While some opttimization has been done on Erlang between release 7 and 12.
%% Which makes the statement not always true.

%% TODO How erlang designed to solve the direct recusive function issue
%% when come to space efficiency.