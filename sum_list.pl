% Базовый случай: сумма элементов пустого списка равна нулю
sum_list([], 0).

% Рекурсивный случай: сумма элементов списка равна сумме головы списка и сумме остатка списка
sum_list([Head|Tail], Sum) :-
    sum_list(Tail, TailSum),  % вычисляем сумму остатка списка
    Sum is Head + TailSum.    % вычисляем сумму элементов списка

% Пример использования:
?- sum_list([1, 2, 3, 4, 5], Sum).
Sum = 15.
