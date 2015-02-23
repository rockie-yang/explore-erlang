% # Variable Scope

% Variable is valid from the expression it is bound until end of the scope.

-module(c8_VariableScope).
-export([f/1, f2/1]).
-export([safe/1]).

% The following two functions are the same.
% ',' is used to separate expression.
% It does not matter if they are in one line or two lines.
f(X) ->
  Y = X + 1, Y * X.

f2(X) ->
  Y = X + 1,
  Y * X.

% The following function is safe.
% Althgough Y bound in one clause and Z bound to the other.
% Since Y,Z are not used in later expression, they are safe.
% It will just having warning that Y,Z are not used.

% Y = true will bound true to Y and the expression result is true.
% So if the parameter is one, then the function result will be true.
safe(X) ->
  case X of
    one -> Y = true;
    _ -> Z = two
  end.


% The following function is not safe.
% Since Z is not bounded in all clauses.
% Compilation error "variable 'Z' unsafe in 'case'" will be reported.

% ```erlang
% unsafe(X) ->
%   case X of
%     one -> Y = true;
%     _ -> Z = two
%   end,
%   Z.
% ```
