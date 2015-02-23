# Input and Output

## Getting some characters or a line

```erlang

L = io:get_line("What? ").      % What? will be prompt at next line
                                % type something like, Something happened, enter
                                % Then Something happened will be bound to L.

C=io:get_chars("Your Choice? ", 1).
                                % Your Choice? will be prompt at next line.
                                % It will fetch one char after got enter pressed.
                                % Other characters will be remained on next line (buffer).

C2=io:get_chars("Your Choice? ", 4).
                                % Your Choice? will be prompt at next line.
                                % If we type 1 and enter
                                % Then Your Choice? will be prompt at next line.
                                % If we type 2 and enter again
                                % Then C2 will be "1\n2\n"

                                % TODO how this behavior in normal program but not in the shell
```

## Read a Erlang term
io:read/1 to get a term. It should only input one valid erlang term.

The input must ONE value term. It can not be expression or function call.
```erlang
T =io:read("then? ")            % if we type in "atom." then enter
                                % T will be {ok, atom}

T2=io:read("then? ")            % if we type "'atom2'." then enter
                                % T2 will be {ok, atom2}

T3=io:read("then? ")            % if we type "2+3." then enter
                                % T3 will be {error,{1,erl_parse,"bad term"}}

T4=io:read("then? ")            % if we type "(2+3)." then enter
                                % T4 will be {error,{1,erl_parse,"bad term"}}

T5=io:read("then? ")            % if we type "{2+3}." then enter
                                % T5 will be {error,{1,erl_parse,"bad term"}}

T6=io:read("then? ")            % if we type "{2,3,tue}." then enter
                                % T6 will be {ok,{2,3,tue}}

```

## Output

io:write is used to write a item to output.

```erlang
R=io:write({hello, world}).     % It will print {hello, world}), R will be ok

R2=io:write(Hello).             % It will raise exception "variable 'Hello' is unbound"
                                % R2 will be continue unbounded

```

io:format/2 is print using formatting string.
