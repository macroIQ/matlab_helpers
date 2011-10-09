% Simple Simulated Random Walk Adapted
% from part 1 Paul Wilmott on Quant Fin

% create matrix with random int either 1 or 2
randMat = randi(2,10000,1);
randEquity = [1:10000];

headCount = 0;
tailCount = 0;
equitySeed = 100.00;

for i=1:10000
    if randMat(i)==1
        % we flipped a heads
        headCount = headCount + 1;
        equitySeed = 1.01 * equitySeed;
        randEquity(i) = equitySeed;
    else
        % must have flipped tails
        tailCount = tailCount + 1;
        equitySeed = 0.99 * equitySeed;
        randEquity(i) = equitySeed;
    end
end

fprintf('You flipped %i heads & %i tails\n', headCount, tailCount);
plot(randEquity);
title('\bf \fontname{Arial} \fontsize{16}Simulated Random Walk');
xlabel('\bf \fontname{Arial} \fontsize{12}Number of Coin Tosses');
ylabel('\bf \fontname{Arial} \fontsize{12}Price in ($)');

% clean-up
clear equitySeed headCount tailCount randMat i;
