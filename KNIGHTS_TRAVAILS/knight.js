
        function createBoard() {
            const board = document.getElementById("board");
            board.innerHTML = "";
            for (let y = 0; y < 8; y++) {
                for (let x = 0; x < 8; x++) {
                    let square = document.createElement("div");
                    square.classList.add("square", (x + y) % 2 === 0 ? "white" : "black");
                    square.id = `${x},${y}`;
                    board.appendChild(square);
                }
            }
        }
        
        function getKnightMoves([x, y]) {
            const moves = [
                [2, 1], [2, -1], [-2, 1], [-2, -1],
                [1, 2], [1, -2], [-1, 2], [-1, -2]
            ];
            return moves.map(([dx, dy]) => [x + dx, y + dy])
                        .filter(([nx, ny]) => nx >= 0 && ny >= 0 && nx < 8 && ny < 8);
        }
        
        function knightMoves(start, end) {
            let queue = [[start, [start]]];
            let visited = new Set();
            while (queue.length) {
                let [current, path] = queue.shift();
                let key = current.toString();
                if (key === end.toString()) return path;
                if (!visited.has(key)) {
                    visited.add(key);
                    getKnightMoves(current).forEach(move => queue.push([move, [...path, move]]));
                }
            }
        }
        
        function findPath() {
            let start = document.getElementById("start").value.split(",").map(Number);
            let end = document.getElementById("end").value.split(",").map(Number);
            let path = knightMoves(start, end);
            
            document.querySelectorAll(".square").forEach(sq => sq.classList.remove("path", "start", "end"));
            if (!path) return alert("Invalid path!");
            path.forEach(([x, y], index) => {
                let square = document.getElementById(`${x},${y}`);
                if (index === 0) square.classList.add("start");
                else if (index === path.length - 1) square.classList.add("end");
                else square.classList.add("path");
            });
        }
        
        createBoard();