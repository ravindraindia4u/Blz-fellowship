#!/usr/bin/python3
import random
# ------------------------------------------------------------------------------
# a. Desc ­> Simulates a gambler who start with $stake and place fair $1 bets until
# he/she goes broke (i.e. has no money) or reach $goal. Keeps track of the number of
# times he/she wins and the number of bets he/she makes. Run the experiment N
# times, averages the results, and prints them out.
# b. I/P ­> $Stake, $Goal and Number of times
# c. Logic ­> Play till the gambler is broke or has won
# d. O/P ­> Print Number of Wins and Percentage of Win and Loss.
# ------------------------------------------------------------------------------
stake = int(input("Enter the value of Stake : "))
goal = int(input("Enter the value of Goal : "))
trails = int(input("Enter the value of Trail : "))
win = 0
loss = 0
winPercent = 0.0
lossPercent = 0.0
for x in range(trails):
    cash = stake
    while cash > 0 and cash < goal:
        if random.randrange(0,2) == 0:
            cash += 1
        else:
            cash -= 1

    if cash == goal:
        win += 1
    else:
        loss += 1
print("wins         : ",win)
print("loss         : ",loss)
print("win %        : ",(100 * win)/trails)
print("loss %       : ",(100 * loss)/trails)

