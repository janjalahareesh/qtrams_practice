
function capitalize(letter) {
    return letter.charAt(0).toUpperCase() + letter.slice(1);
}


function reverseString(string) {
    return string.split("").reverse().join("");
}


const calculator = {
    add: (a, b) => a + b,
    subtract: (a, b) => a - b,
    multiply: (a, b) => a * b,
    divide: (a, b) => (b !== 0 ? a / b : "Cannot divide by zero")
};


function caesarCipher(string, shift) {
    const alphabet = "abcdefghijklmnopqrstuvwxyz";
    return string
        .split("")
        .map(char => {
            const lowerChar = char.toLowerCase();
            if (!alphabet.includes(lowerChar)) return char;
            let newIndex = (alphabet.indexOf(lowerChar) + shift) % 26;
            return char === lowerChar ? alphabet[newIndex] : alphabet[newIndex].toUpperCase();
        })
        .join("");
}


function analyzeArray(array) {
    array = array.map(Number).sort((a, b) => a - b);
    return {
        min: array[0],
        max: array[array.length - 1],
        average: array.reduce((sum, num) => sum + num, 0) / array.length,
        length: array.length
    };
}


function handleCapitalize() {
    const input = document.getElementById("capitalizeInput").value;
    document.getElementById("capitalizeResult").innerText = capitalize(input);
}

function handleReverse() {
    const input = document.getElementById("reverseInput").value;
    document.getElementById("reverseResult").innerText = reverseString(input);
}

function handleCalculator(operation) {
    const num1 = parseFloat(document.getElementById("num1").value);
    const num2 = parseFloat(document.getElementById("num2").value);
    let result;
    switch (operation) {
        case "add": result = calculator.add(num1, num2); break;
        case "subtract": result = calculator.subtract(num1, num2); break;
        case "multiply": result = calculator.multiply(num1, num2); break;
        case "divide": result = calculator.divide(num1, num2); break;
    }
    document.getElementById("calcResult").innerText = result;
}

function handleCipher() {
    const input = document.getElementById("cipherInput").value;
    const shift = parseInt(document.getElementById("shiftInput").value);
    document.getElementById("cipherResult").innerText = caesarCipher(input, shift);
}

function handleAnalyzeArray() {
    const input = document.getElementById("arrayInput").value.split(",");
    const result = analyzeArray(input);
    document.getElementById("min").innerText = result.min;
    document.getElementById("max").innerText = result.max;
    document.getElementById("avg").innerText = result.average.toFixed(2);
    document.getElementById("length").innerText = result.length;
}
