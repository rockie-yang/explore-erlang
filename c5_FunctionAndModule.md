# Function And Module

An erlang program normally consists with function which calls each other.
Functions are grouped together and put in to mudules.

The module name must the same with the file name
We can also define varias of attribute like author
in the begin of the file.
```erlang
-module(c5_FunctionAndModule).


```

All exported functions can be used out side of the module.
Un-exported functions can be only used inside of the module.

hello/0  means the function name is hello, with 0 parameter
double/1 means the function name is double, with 1 parameter

It could have more than one function with the same name
but different number of parameter.
```erlang
-export([hello/0, double/1, fabanacci/1, fabanacci_guard/1]).

hello() ->
  io:fwrite("Hello, world!\n").

double(Value) ->
  Value * 2.


```

Notice,
There first fabanacci end with ';'
And the second fabanacci end with '.'
They are treated as ONE function in erlang.
Erlang will try to use pattern match one by one.

```erlang
%
```

Notice,
It is most common using recursive in Erlang
```erlang
fabanacci(0) ->
  1;
fabanacci(N) ->
  N * fabanacci(N-1).

```

In the previous function fabanacci.
We first provide value 0, then we provide valariable N.
It will first try to match 0, if will fall to N if the value is not 0.

While if we change the order of previous fabanacci.
Then it will always can match N, even when we pass 0.
It will be an infinite recursive.

While we could use guards like following function.
If will first test N > 0, it will fall to next pattern if the test failed
```erlang
fabanacci_guard(N) when N > 0 ->
  N * fabanacci(N-1);

fabanacci_guard(0) ->
  1.

```

after create erlang source files.
we can load to erlang by c command (compile)
c(module)., module is the module name, without the .erl extension

in this case is like following. It need return ok to annotate success compile
```erlang
c(c5_FunctionAndModule).
> {ok,c5_FunctionAndModule}
```

