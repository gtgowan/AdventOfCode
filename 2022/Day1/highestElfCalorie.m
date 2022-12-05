function [elfNumber, calorieTotal] = highestElfCalorie(totalCaloriesPerElf, numberOfElvesDesired)
    if isnan(numberOfElvesDesired)
        numberOfElvesDesired = 1;
    end

    elfNumber = zeros(numberOfElvesDesired,1);
    calorieTotal = zeros(numberOfElvesDesired,1);

    for iter = 1:numberOfElvesDesired
        calorieTotal(iter) = max(totalCaloriesPerElf);
        elfNumber(iter) = find(totalCaloriesPerElf == max(totalCaloriesPerElf));
        totalCaloriesPerElf(elfNumber(iter)) = 0;
    end
end