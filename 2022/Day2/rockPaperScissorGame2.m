function [opponentScore, selfScore] = rockPaperScissorGame2(OD, RD)
if (RD == "Lose"); selfScore = 0; opponentScore = 6; elseif (RD == "Draw"); selfScore = 3; opponentScore = 3; elseif (RD == "Win"); selfScore = 6; opponentScore = 0; end;
if (OD == "Rock"); opponentScore = opponentScore + 1; elseif (OD == "Paper"); opponentScore = opponentScore + 2; elseif (OD == "Scissors"); opponentScore = opponentScore + 3; end;

if (OD == "Rock" & RD == "Draw") | (OD == "Paper" & RD == "Lose") | (OD == "Scissors" & RD == "Win")
    %Rock will be played
    selfScore = selfScore + 1;
elseif (OD == "Paper" & RD == "Draw") | (OD == "Scissors" & RD == "Lose") | (OD == "Rock" & RD == "Win")
    %Paper will be played
    selfScore = selfScore + 2;
elseif (OD == "Scissors" & RD == "Draw") | (OD == "Rock" & RD == "Lose") | (OD == "Paper" & RD == "Win")
    %Scissors will be played
    selfScore = selfScore + 3;
else
    disp("Invalid Game")
end

end