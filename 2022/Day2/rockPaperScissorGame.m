function [opponentScore, selfScore] = rockPaperScissorGame(OD, SD)
if (SD == "Rock"); selfScore = 1; elseif (SD == "Paper"); selfScore = 2; elseif (SD == "Scissors"); selfScore = 3; end;
if (OD == "Rock"); opponentScore = 1; elseif (OD == "Paper"); opponentScore = 2; elseif (OD == "Scissors"); opponentScore = 3; end;

if SD == OD
    selfScore = selfScore + 3;
    opponentScore = opponentScore + 3;
elseif (SD == "Rock" & OD == "Scissors") | (SD == "Paper" & OD == "Rock") | (SD == "Scissors" & OD == "Paper")
    selfScore = selfScore + 6;
    opponentScore = opponentScore + 0;
elseif (OD == "Rock" & SD == "Scissors") | (OD == "Paper" & SD == "Rock") | (OD == "Scissors" & SD == "Paper")
    selfScore = selfScore + 0;
    opponentScore = opponentScore + 6;
else
    disp("Invalid Game")
end

end