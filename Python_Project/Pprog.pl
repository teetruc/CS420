main :-
    % Reads command line input and stores in the 'Input' variable
    read(Input),
    % Calls recursive rule to find the reverse of the list
    rev_list(Input, Reversed),
    % Prints the reversed list
    % print_values is a custom rule used to print the contents of the reversed list called 'Reversed'
    print_values(Reversed),
    % Prints a newline character
    nl. 
% Base case for recursion for rev_list
rev_list([], []).
% Recursive rule for rev_list, where list comprehension is used to append the head of the list to the end of the reversed tail. 
% ReversedTail is found by calling rev_list recursively on the tail of the list.
rev_list([H|T], RevList) :- 
    % Recursive call to rev_list, using the tail of the original list
    rev_list(T, ReversedTail), 
    % Appends the head of the original list to the end of the new reversed tail. Once the base case is reached, the reversed tail will be empty, 
    % and the head of the original list will be appended to the empty list, creating a new list with the head of the original list as the only element.
    append(ReversedTail, [H], RevList).

% Base case for recursion for print_values
print_values([]).
% Recursive rule for print_values, where the head of the list is printed, and a space is printed if the tail of the list is not empty.
print_values([H|T]) :-
    % Write the head of the list in the current iteration
    write(H),
    % If T is empty, stop writing space, else write a space
    (T = [] -> true ; write(' ')), 
    % Recursive call to print_values, using the tail of the list to print the next element until the base case is reached.
    print_values(T).