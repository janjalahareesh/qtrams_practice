let boxes = document.querySelectorAll(".game-box");
let restartBtn = document.querySelector("#Restart-btn");
let newGameBtn = document.querySelector("#new-game-btn");
let messageContainer = document.querySelector(".message-container");
let gameMessage = document.querySelector("#game-message");

let count = 0; // To track moves (for draw condition)
let turnO = true; // true for "O", false for "X"

// Winning patterns
const winPatterns = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [2, 4, 6] 
];

// Function to check the winner
const checkWinner = () => {
    for (let pattern of winPatterns) {
        let pos1 = boxes[pattern[0]].innerText;
        let pos2 = boxes[pattern[1]].innerText;
        let pos3 = boxes[pattern[2]].innerText;

        if (pos1 !== "" && pos1 === pos2 && pos2 === pos3) {
            showWinner(pos1);
            return true;
        }
    }
    return false;
};

// Function to display the winner
const showWinner = (winner) => {
    gameMessage.innerText = ` Congrats! Winner is ${winner}`;
    messageContainer.classList.remove("hide");
    disableBoxes();
};


const disableBoxes = () => {
    boxes.forEach(box => box.disabled = true);
};


const enableBoxes = () => {
    boxes.forEach(box => {
        box.innerText = "";
        box.disabled = false;
    });
};


const gameDraw = () => {
    gameMessage.innerText = "It's a Draw!";
    messageContainer.classList.remove("hide");
    disableBoxes();
};

const resetGame = () => {
    turnO = true;
    count = 0;
    enableBoxes();
    messageContainer.classList.add("hide");
};


boxes.forEach((box) => {
    box.addEventListener("click", () => {
        if (turnO) {
            box.innerText = "O";
        } else {
            box.innerText = "X";
        }
        box.disabled = true;
        turnO = !turnO;
        count++;

        if (checkWinner()) {
            return;
        }
        if (count === 9) {
            gameDraw();
        }
    });
});


newGameBtn.addEventListener("click", resetGame);
restartBtn.addEventListener("click", resetGame);
