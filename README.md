# _Coin Combinations_

#### _A practice application Ruby, Gem & Pry. 5.6.2020_

#### By _**Allison Mackey and Jozy Kinnaman**

## Description

_This application will allow two users to insert an amount and the application will return the smallest number of coins needed to make that change_ 

## Setup/Installation Requirements

* _Clone Repository from GitHub : https://github.com/amackey693/coin-combo.git_
* _Open folder in Virtual Studio Code (or your text editor of choice)_
* _Open your terminal in Virtual Studio Code & type code . this will open all files associated with this app. 
* _Before you initialize GIT, be sure to delete the already exisiting .git file by running this command in your terminal $rm -rf .git_
* _Create your own repository and push new changes to GitHub_

## Behavior Driven Development 


|   Behavior Description        |
|-------------------------------|
| 1. Lets user enter a currency amount to the 10th decimal place []|
| 2. Method takes the currency amount & multiplys it by 100 []|
| 3. Method divides it by the highest amount of change 25 - quarters remainder then moves to next step []|
| 4. Method divides it by the next highest amount of change 10 - dimes remainder then moves to next step []|
| 5. Method divides it by the next highest amount of change 5 - nickles remainder then moves to next step []|
| 6. Method divides it by the final amount of change 1 - pennies remainder then moves to next step []|
| 7. Returns the number of each "coin" used to make the change to the user[]|

## Known Bugs

_No known bugs at this time_

## Support and contact details

_If you have any questions or any issues please feel free to submit an issue here: https://github.com/amackey693/coin-combo.git/issues_

## Technologies Used

_Ruby, Gem, Pry_ 


### License
*MIT LICENSE*

Copyright (c) 2020 **_Allison Mackey & Jozy Kinnaman Epicodus_**