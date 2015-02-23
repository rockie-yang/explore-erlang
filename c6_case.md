# case Construct

case statement is used as conditional evaluation.
the way of construct case is:

case conditional-expression of
Pattern1 -> expression, expression;
Pattern2 -> expression, expression;
Patternn -> expression, expression
end.

```erlang
-module(c6_case).

-export([is_member/2, convert/1]).
-export([listlen_function_pattern_match/1, listlen_case/1]).
-export([list_element/2]).

is_member(item, List) ->
  case lists:member(item, List) of
    true -> true;
    false -> {error, unknown_element}
  end.

```

This is a defensive programming to catch unexpected values
while this is not encouraged in Erlang
Erlang using the philosophy of let it crash

It will return just an {error, unknown_day}
if we pass somevalue not in case.
Like convert(someday) will return {error, unknown_day}
```erlang
convert(Day) ->
  case Day of
    monday -> 1;
    tuesday -> 2;
    wednesday -> 3;
    thursday -> 4;
    friday -> 5;
    saturday -> 6;
    sunday -> 7;

    _ -> {error, unknown_day}
  end.

```

We can use function's pattern match to design a function
```erlang
listlen_function_pattern_match([]) -> 0;
listlen_function_pattern_match([_|XS]) -> 1 + listlen_function_pattern_match(XS).

```

We also can use case to design a function.

We assume that parameter is a List inside the function.
It will raise and exeption if we pass other types.
Like listlen_case({}) will get "** exception error: no case clause matching {}"
Like listlen_case(1) will get "** exception error: no case clause matching 1"
```erlang
listlen_case(List) ->
  case List of
    [] -> 0;
    [_ | XS] -> 1 + listlen_case(XS)
  end.

```

We can use logical statement inside case clauses.
```erlang
list_element(Index, List) ->
  case Index of
    N when N > 0 ->
      lists:nth(Index, List)
  end.
```
