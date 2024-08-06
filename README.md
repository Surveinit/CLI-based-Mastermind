# 🧠 CLI-based-Mastermind

I've attempted to recreate the classic Mastermind game in Ruby, featuring a CLI interface where players deduce a secret code using logical guesses and feedback.

## 📂 File Structure
  

```
.
├── lib

  ├── board.rb
  ├── game.rb
  ├── guess.rb
  ├── player.rb
  ├── secret_code.rb

├── main.rb

└── README.md
```

  

# 🧭 How to Run This Project
  

## > Prerequisites

  

1.  **Ruby**: Ensure you have Ruby installed on your system. You can download and install Ruby from [the official Ruby website](https://www.ruby-lang.org/en/downloads/).

  

2.  **Bundler**: Bundler is a tool for managing gem dependencies. Install Bundler if it is not already installed:

  

```sh

gem install bundler

```


## > Getting Started

  

1.  **Clone the Repository**: If you haven’t already, clone the repository to your local machine:

  

```sh

git clone https://github.com/Surveinit/CLI-based-Mastermind

```
  

2.  **Navigate to the Project Directory**:

  

```sh

cd CLI-based-Mastermind

```

  

3.  **Install Dependencies**: Run Bundler to install the necessary gem dependencies specified in the `Gemfile`:

  

```sh

bundle install

```

  

4.  **Run the Project**: Start the project by executing the main script:

  

```sh

ruby main.rb

```

  

### > Sample Run

  

```

 ruby main.rb 
Before Playing Mastermind, keep these things in mind:
1. Enter your 4 colors guess in a single input with spaces in between.
2. You have 10 turns to guess the correct code.
3. The possible colors are: red, green, blue, yellow, white, and black.
4. Feedback will be provided for each guess:
   - 'Correct position' indicates the number of colors that are correct and in the right position.
   - 'Correct colors' indicates the number of correct colors that are in the wrong position.
5. No duplicate colors are allowed in a single guess.
6. Use the feedback to refine your next guess.
7. The game ends when you either guess the correct code or use all 10 turns.
8. Have fun and good luck!

*Breathe* If you are ready, Just smash that ENTER key!


 > Enter your guesses Mister! 
red yellow blue green
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Row 1 Guess: ["red", "yellow", "blue", "green"] Feedback=> Correct_position: 1 | Correct_colors: 4
Row 2 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 3 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 4 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 5 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 6 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 7 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 8 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 9 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 10 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 > Enter your guesses Mister! 
red blue green yellow
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Row 1 Guess: ["red", "yellow", "blue", "green"] Feedback=> Correct_position: 1 | Correct_colors: 4
Row 2 Guess: ["red", "blue", "green", "yellow"] Feedback=> Correct_position: 4 | Correct_colors: 4
Row 3 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 4 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 5 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 6 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 7 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 8 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 9 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
Row 10 Guess: [nil, nil, nil, nil] Feedback=> Correct_position: 0 | Correct_colors: 0
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 YOU WON in 2 guess. 

```

  

### HEARTFELT THANKS TO [THEODINPROJECT](https://www.theodinproject.com).