// Fibonacci Iterative Function
function fibs(n) {
    let result = [0, 1];
    for (let i = 2; i < n; i++) {
        result.push(result[i - 1] + result[i - 2]);
    }
    return result.slice(0, n);
}


function fibsRec(n, result = [0, 1]) {
    if (result.length >= n) return result.slice(0, n);
    result.push(result[result.length - 1] + result[result.length - 2]);
    return fibsRec(n, result);
}


function calculateFibonacci() {
    let n = parseInt(document.getElementById("fibInput").value);
    if (isNaN(n) || n <= 0) {
        document.getElementById("fibResult").innerHTML = "Please enter a valid number!";
        return;
    }
    let result = fibsRec(n);
    document.getElementById("fibResult").innerHTML = `Fibonacci (${n}): ${result.join(", ")}`;
}


function mergeSort(arr) {
    if (arr.length <= 1) return arr;

    let mid = Math.floor(arr.length / 2);
    let left = mergeSort(arr.slice(0, mid));
    let right = mergeSort(arr.slice(mid));

    return merge(left, right);
}


function merge(left, right) {
    let sortedArray = [];
    while (left.length && right.length) {
        if (left[0] < right[0]) {
            sortedArray.push(left.shift());
        } else {
            sortedArray.push(right.shift());
        }
    }
    return [...sortedArray, ...left, ...right];
}


function performMergeSort() {
    let input = document.getElementById("mergeInput").value;
    let arr = input.split(",").map(num => parseInt(num.trim()));

    if (arr.some(isNaN)) {
        document.getElementById("mergeResult").innerHTML = "Please enter valid numbers!";
        return;
    }

    let sortedArray = mergeSort(arr);
    document.getElementById("mergeResult").innerHTML = `Sorted: ${sortedArray.join(", ")}`;
}
