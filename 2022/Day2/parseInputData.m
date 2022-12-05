function [opponentData, selfData] = parseInputData(fileName)
   rawInputData = readlines(fileName);
   readInputData = split(rawInputData);
   
   opponentData = readInputData(:,1);
   selfData = readInputData(:,2);

   for turn = 1:length(readInputData)
       if opponentData(turn) == "A"
           opponentData(turn) = "Rock";
       elseif opponentData(turn) == "B"
           opponentData(turn) = "Paper";
       elseif opponentData(turn) == "C"
           opponentData(turn) = "Scissors";
       end

       if selfData(turn) == "X"
           selfData(turn) = "Rock";
       elseif selfData(turn) == "Y"
           selfData(turn) = "Paper";
       elseif selfData(turn) == "Z"
           selfData(turn) = "Scissors";
       end
   end
end