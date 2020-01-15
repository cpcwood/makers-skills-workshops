# Secret Diary

### Overview

Exercise 4 from Object Oriented Code 1, Encapsulation & Cohesion - Secret diary.


### Requirements

```
SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

When the user calls `lock` again they throw errors again.
```
### Process

TDD requirements and make program using one class, then split class into two more cohesive classes.
