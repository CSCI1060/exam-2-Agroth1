% This function prints for values from 1 to N:
% “apple” if the value is divisible by 2
% “banana” if the value is divisible by 5
% The number itself if neither is true
% “applebanana” if both are true

function [] = fruit(N)
    for i = 1:N
        if mod(i,2) == 0 && mod(i,5) == 0
            fprintf('applebanana\n')
        elseif mod(i,2) == 0
            fprintf('apple\n')
        elseif mod(i,5) == 0
            fprintf('banana\n')
        else
            fprintf('%d\n', i)
        end             
    end
end
