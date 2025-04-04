class HashMap {
    constructor(initialCapacity = 16, loadFactor = 0.75) {
        this.capacity = initialCapacity;
        this.loadFactor = loadFactor;
        this.size = 0;
        this.buckets = Array(this.capacity).fill(null).map(() => []);
    }

    _hash(key) {
        let hashCode = 0;
        const primeNumber = 31;
        for (let i = 0; i < key.length; i++) {
            hashCode = (primeNumber * hashCode + key.charCodeAt(i)) % this.capacity;
        }
        return hashCode;
    }

    set(key, value) {
        const index = this._hash(key);
        const bucket = this.buckets[index];

        for (let pair of bucket) {
            if (pair[0] === key) {
                pair[1] = value;
                return;
            }
        }
        bucket.push([key, value]);
        this.size++;

        if (this.size / this.capacity > this.loadFactor) {
            this._resize();
        }
    }

    get(key) {
        const index = this._hash(key);
        const bucket = this.buckets[index];

        for (let pair of bucket) {
            if (pair[0] === key) {
                return pair[1];
            }
        }
        return null;
    }

    has(key) {
        const index = this._hash(key);
        const bucket = this.buckets[index];

        for (let pair of bucket) {
            if (pair[0] === key) {
                return true;
            }
        }
        return false;
    }

    remove(key) {
        const index = this._hash(key);
        const bucket = this.buckets[index];

        for (let i = 0; i < bucket.length; i++) {
            if (bucket[i][0] === key) {
                bucket.splice(i, 1);
                this.size--;
                return true;
            }
        }
        return false;
    }

    length() {
        return this.size;
    }

    clear() {
        this.buckets = Array(this.capacity).fill(null).map(() => []);
        this.size = 0;
    }

    keys() {
        return this.buckets.flat().map(pair => pair[0]);
    }

    values() {
        return this.buckets.flat().map(pair => pair[1]);
    }

    entries() {
        return this.buckets.flat();
    }

    _resize() {
        this.capacity *= 2;
        const oldBuckets = this.buckets;
        this.buckets = Array(this.capacity).fill(null).map(() => []);
        this.size = 0;

        for (let bucket of oldBuckets) {
            for (let [key, value] of bucket) {
                this.set(key, value);
            }
        }
    }
}


const hashMap = new HashMap();

function updateUI() {
    const output = document.getElementById("output");
    output.innerHTML = "";
    const entries = hashMap.entries();

    if (entries.length === 0) {
        output.innerHTML = "<p>No items in HashMap.</p>";
        return;
    }

    entries.forEach(entry => {
        output.innerHTML += `<p><strong>${entry[0]}</strong>: ${entry[1]}</p>`;
    });
}


function setKeyValue() {
    const key = document.getElementById("key-input").value.trim();
    const value = document.getElementById("value-input").value.trim();

    if (key && value) {
        hashMap.set(key, value);
        updateUI();
    } else {
        alert("Please enter both a key and a value.");
    }
}

function getKeyValue() {
    const key = document.getElementById("key-input").value.trim();
    const value = hashMap.get(key);

    if (value !== null) {
        alert(`Value for key '${key}': ${value}`);
    } else {
        alert(`Key '${key}' not found.`);
    }
}


function hasKey() {
    const key = document.getElementById("key-input").value.trim();
    alert(hashMap.has(key) ? `Key '${key}' exists.` : `Key '${key}' does not exist.`);
}


function removeKey() {
    const key = document.getElementById("key-input").value.trim();

    if (hashMap.remove(key)) {
        alert(`Key '${key}' removed successfully.`);
        updateUI();
    } else {
        alert(`Key '${key}' not found.`);
    }
}
function clearHashMap() {
    hashMap.clear();

    updateUI();
}


function showKeys() {
        alert(`Keys: ${hashMap.keys().join(", ")}`);
}


function showValues() {
    alert(`Values: ${hashMap.values().join(", ")}`);
}


function showEnties() {
    alert(`Entries: ${JSON.stringify(hashMap.entries())}`);
}


updateUI();
