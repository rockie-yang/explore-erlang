# Errors

## Runctime Errors

The runtime errors in Erlang are exceptions that are thrown by the Erlang system.

The following runtime error might thrown by the system.

Runtime Error     |     Reason
---------------------|-------------------------------------
function_clause     | None of the existing function patterns match
case_clause         | None of the existing patterns in case construct match
if_clause           | None of the exiting expression in the if construct evaluate true
bad_match           | Pattern match failes and no other alternative clauses to choose from.
Reason can be variable already bound
bad                 | A built-in function is called with wrong arguments
undef               | A function called if not define or exported
badarith            | Arithmetical operation with inappropriate arguments


## Handle Error with try ... catch
```erlang
-module(c13_Errors).
-export([]).
```
