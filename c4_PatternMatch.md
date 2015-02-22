# Pattern Match

## Variable

Variables must started with capital letter.

There are two status of a variable.
* Unbounded - The variable has not bound to any value.
* Bounded   - The variable has bound to a value, it could only bound once.

So a variable is not really variable, it can not change the value.

## Basic Pattern Match

= in erlang is not assign. Its a pattern match or a bound.
```erlang
Length = 10.        % Bound value 10 to variable Length

Length = 10 + 1.    % A variable can not bound second time

Length = 10.        % This can be done, it will not raise an exception
                    % Because Length is bound to value 10,
                    % it matches value 10.
                    % TODO where is the real use case

Width = 10 + 1.     % The right expression will evaluate value first.
                    % Then the value bound to the variable
```

## List Pattern Match

One main use case for a List is pattern match.

```erlang
[Head|Tail] = [1,2,3,4].    % The head element bound to Head
                            % All other elements bound to Tail
                            % Head will 1, Tail will be [2,3,4]

[Head|Tail] = 1             % It will raise exception
                            % Since the left and right have different type

[Head|Tail] = [1].          % The head element bound to Head
                            % All other elements bound to Tail
                            % Head will 1, Tail will be []

[Head,Second|Tail] = [1,2,3,4]. % We can get multiple elements in a list

[_,Second|Tail] = [1,2,3,4].    % In this case, we don't care for the first
                                % We just wanna get the second element

```

## Tuple Pattern Match

Tuple pattern match is very similar to List pattern match.
```erlang
{first,second,third} = {1,2,3}. % It will fail
                                % Variables must start with capital letter

{First,Second,Third} = {1,2,3}. % The left and right both have 3 element

{First,Second,Third} = {1,2}.   % It will fail
                                % Since the left and right side does not
                                % have the same amount of elements


```

## Combined Pattern Match

Pattern match can be done at one line for more layer match

```erlang
{A, _, [B|_], {B}} = {abc, 23, [22, 23], {22}}
```