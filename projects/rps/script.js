let playerScore = 0;
let computerScore = 0;

function reset() {
    console.log("Player reset game.")
    document.getElementById("display").textContent="Game reset.";
    playerScore = 0;
    computerScore = 0;
    document.getElementById("playerScore").textContent=playerScore;
    document.getElementById("computerScore").textContent=computerScore;
}

// Random computer input function
function computerSelection() {
    const arr = ["Rock", "Paper", "Scissors"];
    const max = 3;
    const pos = Math.floor(Math.random()*max);
    console.log("Computer chooses " + arr[pos] + ".");
    return pos;
}

// Button input functions
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

// Called by one of the three entry buttons that begin the game
function playRound(p) {
    const c = computerSelection();
    let winner = null;
    // check for a tie up front
    if (c === p) {
        console.log("Tie!");
        document.getElementById("display").textContent="Tie!";
    }
    // else if represents player winning conditions
    else if((p === 0 && c === 2) || // Player: Rock | Computer: Scissors
            (p === 1 && c === 0) || // Player: Paper | Computer: Rock
            (p === 2 && c === 1)) { // Player: Scissors | Computer: Paper
        winner = "Player";
    }
    // if there's no tie, and the player didn't win, the computer must have won
    else {
        winner = "Computer";
    }
    if (winner !== null) {
        interpretResults(p, c, winner);
    }
    console.log("===================")
}

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