%
% This function simulates playing many hands of
% Simple Blackjack where the player continually
% hits up to a given limit. Final score for each
% hand is computed, and the average score over all
% hands is returned.
%
% INPUT limit – The player always hits if their
% hand value is less than limit
% INPUT trials – The number of hands to simulate
%
% OUTPUT avgScore – The average final score of
% all hands.

function avgScore = simpleBlackjack(limit, trials)
    totalScore = 0;
    
    cards = [2*ones(1, 4), 3*ones(1, 4), 4*ones(1, 4), 5*ones(1, 4)...
            6*ones(1, 4), 7*ones(1, 4)...
            8*ones(1, 4), 9*ones(1, 4), 10*ones(1, 16)...
            11*ones(1, 4)];
    
    for i=1:trials
        handScore = 0;
    
        while handScore < limit
            card = cards(randi(length(cards)));
            handScore = handScore + card;
        end
    
        if handScore > 21
            handScore = 0;
        end
    
        totalScore = totalScore + handScore;
    end
    avgScore = totalScore/trials;
end
