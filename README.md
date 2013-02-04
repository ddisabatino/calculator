Project name: calculator
my name: Devin DiSabatino

OBJECTS: 
Solver : recursively defined object that computes the value of a string.
There will also be an object for each operation
Inputs = strings 
Parser reads input line character by character.
(9+8)*3+6/2
Parse searching for multiplication. When found, send both sides back into solver and send the two results to the multiplication object.
When no multiplication is found, solver moves to division, then addition, then subtraction.