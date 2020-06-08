# Object Oriented Programming - Tic Tac Toe console game

This project is about exercising the main concepts of object-oriented programming particularly classes and access to their attributes to build a tic tac toe game that runs in the terminal.

<h3>About the Game</h3>
<p>Tic Tac Toe is a game played between two players. It is played on a 3x3 grid board and can be played for as many times as desired. 
Players take turns to mark the grid and their selections are reflected on the grid with X and O characters. The winner of the game is determined when one of the players makes a complete row or column or diagonal of the grid. </p>

<h3>How to play</h3>
On each turn, players must select a cell number displayed on the board which is going to be marked with players' special sign. To make a selection player must enter the number that represents a cell. This number has to be in the 1 to 9 range. You cannot sign a cell that is already signed. In order to win a game, the player has to sign 3 cells that follow each other horizontally, vertically, or diagonally.

Here are some winning cases:

![screenshot](https://github.com/8Bts/tic-tac-toe/blob/readme_game_instructions/TICTACTOE.png)

<h3>Project Description</h3>
In this project, we created actual logic for the tic-tac-toe game. We defined _Player_, _GameBoard_ classes, and _GamePlay_ module in the separate .rb files. Here are the purposes of these assets:

- **Player**
 This class represents player information like _name_, played turns, and _sign_ used to mark gameboard. It also defines 2 methods that are responsible for _make_turn_ and _reset_ the turns state.

- **GameBoard**
This class is responsible for rendering the game board, modifying and resetting it. It has 1 class variable _@@board_cells_ which is used for storing(and modifying!) the values of board cells, and it has 5 class methods to _print_board_, _mark_board_, _clear_board_, _update_board_ and _reset_board_.

- **GamePlay**
We created this module to determine the winner of the game. It has a constant WIN_STATES which is for storing the cell combinations that make the player wins. There is also a _won?_ a function that accepts parameter _Player_ object and compares the _@turns_ variable of the player with the WIN_STATES constant. The result of this comparison going to be the result of this method. We added a custom method to _Array_ class called _contain_all?_ which is used inside _won?_ method.

- **Executable File**
In the main.rb file we defined some methods to optimize code and avoid repeated code. This is the executable file for the game.

## Built With

- Ruby 2.5.5p157/2.6.6p146
- VS Code
- Repl.it

## Getting Started 

To get a local copy follow these simple example steps.

 - Click on **Clone or download** button of this repository and copy the URL(or you can just download .zip).
 - Open your command prompt and run this command: git clone COPIED-URL


## Prerequisites
In order to make the program work, you need to have ruby interpreter. You can get the latest version of ruby from [official website](https://www.ruby-lang.org/en/downloads/).


## Usage
1. Open your command prompt and navigate to 'bin' folder of tic-tac-toe(use 'cd' command)
2. Type ruby main.rb
3. Enjoy game!




## Live Demo

<a href="https://repl.it/@vanheavenui/tic-tac-toe" target="_blank">Live Demo Link</a>

## Authors

👤 **Rashid Mammadli**

- Github: [8Bts](https://github.com/8Bts)
- Twitter: [@Rasheed49705929](https://twitter.com/Rasheed49705929)
- Linkedin: [linkedin](https://www.linkedin.com/in/mcmizze-price-238a70135/)
- Email: mcmizze@yahoo.com

**Mworekwa Ezekiel**

- Github: [@vanheaven-ui](https://github.com/vanheaven-ui)
- Twitter: [@MworekwaE](https://twitter.com/MworekwE)
- Linkedin: [@linkedin](https://www.linkedin.com/in/vanheaven/)
- Email: [ezekiel](mailto:vanheaven6@gmail.com)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the <a href="https://github.com/8Bts/tic-tac-toe/issues" target="_blank">issues page</a>.

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
 
- <a href="https://www.theodinproject.com/" target="_blank">The Odin Project</a>
- <a href="https://ruby-doc.org/core-2.6.1/" target="_blank">Ruby Docs</a>
- <a href="https://www.stackoverflow.com/" target="_blank">Stackoverflow</a>

