# Meta Programming

We can use built-in function apply to do some meta programming.
The good part of apply is that we don't need know function syntax statically.
We can determine the syntax at run time.

apply/3 takes 3 parameters, module name, exported function name and a list of arguments.

```erlang

apply(erlang, integer_to_list, [35]).   % It's the same as next expression
integer_to_list(35).

apply(erlang, list_to_float, ["35.0"]). % It's the same as next expression
list_to_float("35.0").
```

TODO performance need be checked.