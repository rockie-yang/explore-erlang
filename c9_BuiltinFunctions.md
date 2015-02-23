# Built-in Functions

Built-in functions are usually written in C and auto imported.
All built-in function are are considered belong to moudle erlang
except some modules for practicality or efficiency reason.
Those module like ets, lists


## Object Access and Examination

```erlang
L = [1,2,3,4].
T = {1,2,3,4].

hd(L).                  % return head of L, which is 1
                        % L itself will not modified as always in Erlang
tl(L).                  % return tail of L, which is [2,3,4]
                        % L itself will not modified as always in Erlang

[Head|Tail]=L.          % Using pattern match to unpack List to head and tail
                        % It is simpler if we want use both head and tail


length(L).              % Get length of a list, it can NOT be used on tuples :-(
tuple_size(T).          % Get length of a tuple, it can NOT be used on lists


element(2, T).          % Get 2nd element of a tuple.
lists:nth(2, L).        % Get 2nd element of a list.

setelement(2, T, new).  % Set 2nd element of T to new

erlang:append_element(T, 3).
                        % Append 3 to T
                        % TODO how to import erlang:append_element
                        % the following statement return error in erlang shell
                        % import(erlang, [append_element/2]).
```

## Type Conversion

### Atom and List
```erlang

atom_to_list(hello).    % convert an atom to list or says as string, "hello"
list_to_atom("hello").  % convert an list to atom, hello
list_to_atom('hello').  % single quote means atom, and this function will fail
list_to_existing_atom("hello2").
                        % it will fail if the atom does not exist yet.
```

### List and Tuple
```erlang
L=[1,2,3].
T={3,4,5}.

list_to_tuple(L)        % the result will be {1,2,3}
list_to_tuple(T)        % this will raised an exception, since T is not a list
                        % This is follow Erlang philosophy let it crash
tuple_to_list(T)        % The result will be [3,4,5]
```

### Float and List
```erlang
float(3)                % convert a number to float, result will be 3.0
float(3.0)              % it is OK to pass an float, result will be 3.0

list_to_float("3.0")    % convert a string to float, result will be 3.0
list_to_float([$2, $., $0]).
                        % convert an authentic list to float, result will be 2.0

list_to_float("2")      % exception "bad argument" will be thrown
                        % since the string is an integer
```

### Integer and List
```erlang
integer_to_list(35).    % result will be "35"
integer_to_list(35.0).  % exception "bad argument" will be raised

list_to_integer("35").  % result will be 35
list_to_integer("35."). % exception "bad argument" will be raised
list_to_integer("35.0").% exception "bad argument" will be raised
```

### Float
```erlang
round(3.14)             % result will be 3
round(3.6)              % result will be carried to 4

trunc(3.6)              % always truncate even the first digit >= 5

```

## Date and Time

```erlang
date().                 % return current {Year, Month, Day}

time().                 % return current {Hour, Minute, Second}

now().                  % return {MegaSeconds, Seconds, MicroSeconds}
                        % since midnight, Jan 1, 1970
                        % It always return a unique value on one node
                        % So together will node id can be used as unique identifier.
```
