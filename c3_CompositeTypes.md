# Composite Types

## Tuple

Tuple is a composite data type to store collection of items.
Items in a tuple does not have to be the same type.

A tuple is encapsulated with {}.
Notice the name of value need started with capital.
Since every thing in erlang is immutable, so there is no variables, only values.

```erlang
T={1,2}.                    % The name must start with capital letter

T={1,'Jeo', 2, 'Amstrong'}. % The value can not be changed in erlang
                            % So if T is already defined in the same scope
                            % Then it will raise an exception

tuple_size({a,{b,c},2}).    % get size of a tuple, only for top level

element(2,{a,{b,c},2}).     % return an element, index start from 1

setelement(2, {a, {b,c}, 2}, b).    % set an element on a tuple
                                    % the original tuple will not change
                                    % it will return a new tuple

```

## List

List is a composite data type to store collection of items.
Items in a list does not have to be the same type.


there are different ways to construct a list.
```erlang
[jan,feb,mar]       % one way to create a list

[1,2,[3]]           % the third element is 3
[1,2,[3]]           % the third element is [3]
[1,2 |[3]]          % the third element is 3
```

most of the functions are located in lists module.
```erlang
lists:max([1,2,[3]])        % results is [3]
                            % elements 1, 2, [3]
                            % [3] is the largest

1 < [3]                     % result is true
4 < [3]                     % result is still true

lists:max([1,2|[3]])        % results is 3

lists:sort([2,1,3])         % result is [1,2,3]

lists:split(3, [1,4,3,2,5]) % result is {[1,4,3],[2,5]}

lists:sum([1,4,3,2,5])      % result is 15

lists:zip([1,3,5], [2,4,6]) % zip two lists together
                            % the result is a list of tuple
                            % result is [{1,2},{3,4},{5,6}]

lists:delete(3,[1,4,3,2,5]) % delete nth element
                            % result is [1,4,2,5]

lists:last([1,2,3])         % get last number
                            % the result is 3

lists:member(3, [1,2,3])    % check is item in a list
                            % the result is true.
lists:member(4, [1,2,3])    % the result is false.

lists:nth(2,[1,2,3])        % get nth element. result is 2

length([1,2,3])             % get the size of a list
```

using ++ to concatenate two lists.
using -- to subtract two lists.
It's a bit strange that ++ and -- are right associate.
```erlang
[1,2,3]++[4,5,6].           % join two lists
                            % the result is [1,2,3,4,5,6]

[1,2,3,4,5,6]--[2,3].       % subtract two list
                            % the result is [1,4,5,6]

[1,2,3]++[4,5,6]--[2,3].    % the result is surprise
                            % [1,2,3,4,5,6]

[1,2,3]++([4,5,6]--[2,3]).  % the previous expression is the same as this

([1,2,3]++[4,5,6])--[2,3].  % the result is as expected
                            % [1,4,5,6]
```



## Characters and String

There is no special type for string. It is just a list of characters.
Characters is just an integer. It can be annotated with $ for special character.

```erlang
'ABC'
[65, 66, 67]    % it's the same with 'ABC'
[$A, 66, $A+2]  % it's the same with 'ABC'
```

## Comparison for Different Types

There are following rule when compare with different types.
number < atom < reference < fun < port < pid < tuple < list < binary
```erlang
1 < one         % return true since number always < atom
1 < {1}         % return true since number always < tuple
{1} < [1]       % return true since tuple always < list

{1} < {2}       % compare element by element
                % it will return true

[1,2] < [1,3>   % compare element by element
                % it will return true
```