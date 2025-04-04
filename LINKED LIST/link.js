class Node {
    constructor(value = null, next = null) {
        this.value = value;
        this.next = next;
    }
}

class LinkedList {
    constructor(head = null) {
        this.head = head;
    }

    
    append(value) {
        if (!this.head) {
            this.head = new Node(value);
            return this;
        }
        let tail = this.getTail();
        tail.next = new Node(value);
        return tail;
    }

    
    prepend(value) {
        if (!this.head) {
            this.head = new Node(value);
            return this;
        }
        this.head = new Node(value, this.head);
    }

    
    getTail() {
        if (!this.head) return null;
        let tail = this.head;
        while (tail.next !== null) {
            tail = tail.next;
        }
        return tail;
    }

    
    size() {
        let count = 0;
        let current = this.head;
        while (current !== null) {
            count++;
            current = current.next;
        }
        return count;
    }

    
    getHead() {
        return this.head;
    }

    
    at(index) {
        if (!this.head) return null;
        let current = this.head;
        for (let i = 0; i < index; i++) {
            if (!current.next) return null;
            current = current.next;
        }
        return current;
    }

    
    pop() {
        if (!this.head) return null;
        if (!this.head.next) {
            this.head = null;
            return;
        }
        let prev = this.at(this.size() - 2);
        prev.next = null;

        let append= this.at(this.size() -1,);
        append.next = null;
    }

    
    contains(value) {
        let current = this.head;
        while (current !== null) {
            if (current.value === value) return true;
            current = current.next;
        }
        return false;
    }

    
    find(value) {
        let index = 0;
        let current = this.head;
        while (current !== null) {
            if (current.value === value) return index;
            index++;
            current = current.next;
        }
        return null;
    }

    
    toString() {
        if (!this.head) return "null";
        let output = "";
        let current = this.head;
        while (current !== null) {
            output += `(${current.value}) -> `;
            current = current.next;
        }
        return output + "null";
    }
}


const list = new LinkedList

function appendNode() {
    let value = parseInt(document.getElementById("nodeValue").value);
    if (!isNaN(value)) {
        list.append(value);
        displayList();
    } else {
        alert("Please enter a valid number!");
    }
}

function prependNode() {
    let value = parseInt(document.getElementById("nodeValue").value);
    if (!isNaN(value)) {
        list.prepend(value);
        displayList();
    } else {
        alert("Please enter a valid number!");
    }
}


function popNode() {
    list.pop();
    displayList();
}


function displayList() {
    document.getElementById("listOutput").innerText = "List: " + list.toString();
}


function findNode() {
    let value = parseInt(document.getElementById("nodeValue").value);
    if (!isNaN(value)) {
        let index = list.find(value);
        if (index !== null) {
            alert(`Value ${value} found at index ${index}`);
        } else {
            alert(`Value ${value} not found`);
        }
    } else {
        alert("Please enter a valid number!");
    }
}
