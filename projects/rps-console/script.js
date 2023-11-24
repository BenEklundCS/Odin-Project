function computerSelection() {
    let max = 4;
    return Math.floor(Math.random()*max);
}

function playerSelection() {
    let validInput = ["rock", "paper", "scissors"]
    let selection = prompt("Rock, paper, or scissors?");
    while (!validInput.includes(selection.toLowerCase())) {
        console.error("Invalid input!")
        selection = prompt("Rock, paper, or scissors?");
    }
    return validInput.indexOf(selection)+1;
}

function rps() {
    let c = computerSelection();
    let p = playerSelection();
    console.log("Computer: " + c);
    console.log("Player: " + p);
    if (c === p) {
        console.log("Tie!")
    }
    else if (c === p+1) {
        console.log("Computer wins!")
    }
    else if (p === c+1) {
        console.log("Player wins!")
    }
    else if (c === 1) {
        console.log("Computer wins!")
    }
    else {
        console.log("Player wins!")
    }
}

for (let i = 0; i < 5; i++) {
    rps();
}