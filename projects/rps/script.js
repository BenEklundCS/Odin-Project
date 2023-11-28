let playerScore = 0;
let computerScore = 0;

// Button input functions
function reset() {
    console.log("Game has been reset.")
    document.getElementById("display").textContent="Game reset.";
    playerScore = 0;
    computerScore = 0;
    document.getElementById("playerScore").textContent=playerScore;
    document.getElementById("computerScore").textContent=computerScore;
}

function rock() {
    console.log("Player chooses Rock.")
    playRound(0)
}

function paper() {
    console.log("Player chooses Paper.")
    playRound(1);
}

function scissors() {
    console.log("Player chooses Scissors.")
    playRound(2);
}

// Random computer input function
function computerSelection() {
    const arr = ["Rock", "Paper", "Scissors"];
    const max = 3;
    const pos = Math.floor(Math.random()*max);
    console.log("Computer chooses " + arr[pos] + ".");
    return pos;
}

// Called by one of the three entry buttons that begin the game
function playRound(p) {
    const c = computerSelection();
    let winner = null;
    // check for a tie up front
    winner = determineWinner(c, p, winner);
    if (winner !== null) {
        interpretResults(p, c, winner);
    }
    console.log("===================")
    checkGameWinner();
}

function determineWinner(c, p, winner) {
    if (c === p) {
        console.log("Tie!");
        document.getElementById("display").textContent = "Tie!";
        document.getElementById("results").textContent = "";
    }

    // else if represents player winning conditions
    else if ((p === 0 && c === 2) || // Player: Rock | Computer: Scissors
        (p === 1 && c === 0) || // Player: Paper | Computer: Rock
        (p === 2 && c === 1)) { // Player: Scissors | Computer: Paper
        winner = "Player";
    }

    // if there's no tie, and the player didn't win, the computer must have won
    else {
        winner = "Computer";
    }
    return winner;
}

// Function generates a resultString to place in the "results" HTML element, also sets "display" to whichever winner
function interpretResults(p, c, winner) {
    console.log(winner + " wins!");
    const arr = ["Rock", "Paper", "Scissors"];
    let resultString = null;
    if (winner === "Player") {
        playerScore++;
        document.getElementById("playerScore").textContent=playerScore;
        document.getElementById("display").textContent="You win!";
        resultString = arr[p] + " beats " + arr[c] + ".";
    }
    else {
        computerScore++;
        document.getElementById("computerScore").textContent=computerScore;
        document.getElementById("display").textContent="Computer wins!";
        resultString = arr[c] + " beats " + arr[p] + ".";
    }
    document.getElementById("results").textContent=resultString;
}

function checkGameWinner() {
    if (playerScore == 5) {
        document.getElementById("results").textContent="Game over. Player wins " + playerScore + "-" + computerScore + "!";
        reset();
    }
    else if (computerScore == 5) {
        document.getElementById("results").textContent="Game over. Computer wins " + computerScore + "-" + playerScore + "!";
        reset();
    }
}