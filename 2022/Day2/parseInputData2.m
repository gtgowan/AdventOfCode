function [opponentData, resultData] = parseInputData2(fileName)
   rawInputData = readlines(fileName);
   readInputData = split(rawInputData);
   
   opponentData = readInputData(:,1);
   resultData = readInputData(:,2);

   for turn = 1:length(readInputData)
       if opponentData(turn) == "A"
           opponentData(turn) = "Rock";
       elseif opponentData(turn) == "B"
           opponentData(turn) = "Paper";
       elseif opponentData(turn) == "C"
           opponentData(turn) = "Scissors";
       end

       if resultData(turn) == "X"
           resultData(turn) = "Lose";
       elseif resultData(turn) == "Y"
           resultData(turn) = "Draw";
       elseif resultData(turn) == "Z"
           resultData(turn) = "Win";
       end
   end
end