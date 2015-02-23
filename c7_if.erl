% # if Construct

% Here is the if construct grammar.
% if
%   Guard1 -> expression11, expression12, .. ;
%   Guard2 -> expression21, expression22, .. ;
%   ... ;
%   Guardn -> expressionn1, expressionn2, ..
% end

% The if construct is very similar to case construct.

% In case construct, there is only one conditional-expression.
% The value will be only evaluated once.

% In if construct there are more than one Guards.
% Each Guards will be evaluated until meet a true.

-module(c7_if).
-export([if_compare/1]).


% We provide two guards for the following if construct.
% While we don't provide guard when X is 1.
% Exception "no true branch found when evaluating an if expression"
% will be raised if we pass the value 1.
if_compare(X) ->
  if
    X < 1 -> smaller;
    X > 1 -> greater
    % call user function in guard is not allowed,
    % it will report and compile error.
    % "call to local/imported function user_test/1 is illegal in guard"
    % ; user_test(X) -> true
  end.

user_test(X) -> true.

