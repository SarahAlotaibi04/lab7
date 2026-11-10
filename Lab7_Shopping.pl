start :-
    shopping([coffee, milk, chocolate, apple, juice]).

shopping(Basket) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    process_choice(Choice, Basket).

process_choice(d, Basket) :-
    display_items(Basket),
    shopping(Basket).

process_choice(a, Basket) :-
    write('Enter the item you want to add: '),
    read(Item),
    NewBasket = [Item|Basket],
    write('The item has been added.'), nl,
    shopping(NewBasket).

process_choice(e, _) :-
    write('Goodbye!'), nl.

process_choice(_, Basket) :-
    write('Invalid choice. Please try again.'), nl,
    shopping(Basket).

display_items([]).

display_items([Head|Tail]) :-
    write(Head), nl,
    display_items(Tail).
