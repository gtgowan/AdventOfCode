function inputData = parseInputData(fileName)
   readInputData = readlines(fileName);
   rawInputData = double(readInputData);
   
   inputData = [ ];
   rowIndex = 1;
   columnIndex = 1;

   for iter = 1:length(rawInputData)
       if isnan(rawInputData(iter))
           columnIndex=columnIndex+1;
           rowIndex = 1;
       else
           inputData(rowIndex,columnIndex) = rawInputData(iter);
           rowIndex = rowIndex+1;
       end
   end
end