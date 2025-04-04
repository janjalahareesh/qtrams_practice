class Node {
    constructor(value) {
        this.value = value;
        this.left = null;
        this.right = null;
    }
}

class Tree {
    constructor(array) {
        this.root = this.buildTree([...new Set(array)].sort((a, b) => a - b));
    }

    buildTree(array) {
        if (array.length === 0) return null;
        const mid = Math.floor(array.length / 2);
        const root = new Node(array[mid]);

        root.left = this.buildTree(array.slice(0, mid));
        root.right = this.buildTree(array.slice(mid + 1));

        return root;
    }

    insert(value, node = this.root) {
        if (!node) return new Node(value);
        if (value < node.value) {
            node.left = this.insert(value, node.left);
        } else if (value > node.value) {
            node.right = this.insert(value, node.right);
        }
        return node;
    }

    deleteItem(value, node = this.root) {
        if (!node) return null;

        if (value < node.value) {
            node.left = this.deleteItem(value, node.left);
        } else if (value > node.value) {
            node.right = this.deleteItem(value, node.right);
        } else {
            if (!node.left) return node.right;
            if (!node.right) return node.left;

            let temp = this.findMin(node.right);
            node.value = temp.value;
            node.right = this.deleteItem(temp.value, node.right);
        }
        return node;
    }

    find(value, node = this.root) {
        if (!node || node.value === value) return node;
        return value < node.value ? this.find(value, node.left) : this.find(value, node.right);
    }

    findMin(node) {
        while (node.left) node = node.left;
        return node;
    }

    levelOrder(callback) {
        if (!callback) throw new Error("Callback function is required");

        let queue = [this.root];
        while (queue.length) {
            let node = queue.shift();
            callback(node);
            if (node.left) queue.push(node.left);
            if (node.right) queue.push(node.right);
        }
    }

    inOrder(callback, node = this.root) {
        if (!callback) throw new Error("Callback function is required");
        if (node) {
            this.inOrder(callback, node.left);
            callback(node);
            this.inOrder(callback, node.right);
        }
    }

    preOrder(callback, node = this.root) {
        if (!callback) throw new Error("Callback function is required");
        if (node) {
            callback(node);
            this.preOrder(callback, node.left);
            this.preOrder(callback, node.right);
        }
    }

    postOrder(callback, node = this.root) {
        if (!callback) throw new Error("Callback function is required");
        if (node) {
            this.postOrder(callback, node.left);
            this.postOrder(callback, node.right);
            callback(node);
        }
    }

    height(node) {
        if (!node) return -1;
        return 1 + Math.max(this.height(node.left), this.height(node.right));
    }

    depth(node, current = this.root, depth = 0) {
        if (!current || !node) return -1;
        if (current.value === node.value) return depth;

        if (node.value < current.value) return this.depth(node, current.left, depth + 1);
        return this.depth(node, current.right, depth + 1);
    }

    isBalanced(node = this.root) {
        if (!node) return true;
        const leftHeight = this.height(node.left);
        const rightHeight = this.height(node.right);
        return Math.abs(leftHeight - rightHeight) <= 1 && this.isBalanced(node.left) && this.isBalanced(node.right);
    }

    rebalance() {
        let values = [];
        this.inOrder((node) => values.push(node.value));
        this.root = this.buildTree(values);
    }

    prettyPrint(node = this.root, prefix = "", isLeft = true) {
        if (!node) return;
        if (node.right) this.prettyPrint(node.right, `${prefix}${isLeft ? "│   " : "    "}`, false);
        console.log(`${prefix}${isLeft ? "└── " : "┌── "}${node.value}`);
        if (node.left) this.prettyPrint(node.left, `${prefix}${isLeft ? "    " : "│   "}`, true);
    }
}


const tree = new Tree([1,7,4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]);

console.log("Initial Balanced Tree:");
tree.prettyPrint();

console.log("Is the tree balanced? ", tree.isBalanced());

tree.insert(110);
tree.insert(120);
tree.insert(130);

console.log("\nTree after adding unbalancing values:");
tree.prettyPrint();

console.log("Is the tree balanced? ", tree.isBalanced());


tree.rebalance();

console.log("\nTree after rebalancing:");
tree.prettyPrint();

console.log("Is the tree balanced? ", tree.isBalanced());


console.log("\nLevel Order Traversal:");
tree.levelOrder((node) => console.log(node.value));

console.log("\nInorder Traversal:");
tree.inOrder((node) => console.log(node.value));

console.log("\nPreorder Traversal:");
tree.preOrder((node) => console.log(node.value));

console.log("\nPostorder Traversal:");
tree.postOrder((node) => console.log(node.value));
