# Basic Types

## Integer

The following number are normal 10 based number.
```erlang
16
0
-1
100

is_integer(10)  % using is_integer if the type is integer for a value
```

If the numbers are not 10 based then we can use Base#Number to notate.
```erlang
2#1010   % 2 based number 1010, it's 10
16#EB    % 16 based number EB, or 0xEB, it's 234
-16#EA   % 16 based number -EA, or -0xEA, it's -233
```

Characters are integer numbers in erlang. We can add $ to annotate a character.
```erlang
$a      % the value will be ascii code of 'a', it's 97
$A      % the value will be ascii code of 'A', it's 65
```

## Float

Float number are fairly straight forward.
```erlang
15.2
1.1e1
1.1e-1
7.5E10

is_float(3.0)   % using is_float to test type
```

## Mathematical Operation

Erlang's mathematical operation is a bit different with others.

+, -, *  are int/float operation. The result will be float if one operand is float.
```erlang
3 + 4       % the result will be integer 7
3 + 4.0     % the result will be float 7.0
2 - 4       % the result will be integer -2
2.0 - 4     % the result will be float -2.0
2 * 4       % the result will be integer 8
2 * 4.0     % the result will be float 8.0
```
/ are float divide, the result will be float even two operands are int.
```erlang
2 / 4       % the result will be float 0.5
4 / 2       % the result will be float 2.0
```

div is integer division, rem is integer remainder
```erlang
10 div 3    % the result will be integer 3
10 rem 3    % the result will be integer 1
```

## Atom

There is a special type atom. It is a name to annotate something.
It does not have a defined value, the name is the special thing to annotate.

Atom need be start with low letters. Here are some valid atom in example.
```erlang
what_is_erlang
rockie@stockholm
monday
```

Atom can be any character if it's encapsulated by a single quotes.
```erlang
'what.is.erlang'
'just a atom'
```

## Boolean

There is no special type for Boolean. Atom true and false are used together with boolean operation.

```erlang
1 == 2              % the value will be atom false
1 == 1              % the value will be atom false

a > z               % atom can be compared with alphabatic order

is_boolean(6)       % we can check if the value is boolean

true and false      % return true if both operands are true.
                    % the both operands value will be evaluated
                    % even if the left operand is false.

true andalso false  % andalso differs with and,
                    % it will not evaluate the right operand
                    % if the left operand is false

true or false       % return true if either operand is true
                    % the both operands value will be evaluated
                    % even if the left operand is true

true orelse false   % return true if either operand is true
                    % the right operand will not be evaluated
                    % if the left operand is true

true xor false      % return true only if
                    % one is true and the other is false

not true            % revert boolean value
```



## Comparison

There is bit different with main stream language on comparison operators.

```erlang
one == two      % return false

1 == 1.0        % return true, since integer
                % will convert to float before compare

1 /= 1.0        % it will return false

1 =:= 1.0       % exactly equal  will return false

1 =/= 1.0       % exactly not equal will return true

1 > 1.0         % it will return false
1 >= 1.0        % it will return true

2 < 3           % it will return true
3 =< 3          % it's =< but not <= like other languages
                % it will return true
```


