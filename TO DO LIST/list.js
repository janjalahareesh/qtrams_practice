document.addEventListener("DOMContentLoaded", () => {
    const addTodoBtn = document.querySelector(".Add-todo-btn");
    const todoForm = document.getElementById("add-todo-form");
    const addChecklistBtn = document.querySelector(".add-to-checklist");
    const checklistInput = document.getElementById("add-to-checklist");
    const checklistUl = document.querySelector(".todo-ul");
    const submitBtn = document.querySelector(".submit-button");
    const resetBtn = document.querySelector(".reset-button");
    const projectsDiv = document.querySelector(".Projects");

    addTodoBtn.addEventListener("click", () => {
        todoForm.style.display = (todoForm.style.display === "none") ? "block" : "none";
    });

    addChecklistBtn.addEventListener("click", () => {
        if (checklistInput.value.trim() !== "") {
            const listItem = document.createElement("li");
            listItem.textContent = checklistInput.value;
            checklistUl.appendChild(listItem);
            checklistInput.value = "";
        }
    });

    submitBtn.addEventListener("click", () => {
        const title = document.getElementById("title").value;
        const description = document.getElementById("discription").value;
        const dueDate = document.getElementById("duedate").value;
        const priority = document.getElementById("priority").value;
        const checklistItems = Array.from(checklistUl.children).map(li => li.textContent);

        if (title && description && dueDate) {
            const todoDiv = document.createElement("div");
            todoDiv.classList.add("todo-item");

            todoDiv.innerHTML = `
                <h3>${title}</h3>
                <p><strong>Description:</strong> ${description}</p>
                <p><strong>Due Date:</strong> ${dueDate}</p>
                <p><strong>Priority:</strong> ${priority}</p>
                <p><strong>Checklist:</strong> ${checklistItems.join(", ") || "None"}</p>
            <div class="todo-icons">
                <button class="edit-todo"><i class="fas fa-edit"></i></button>
                <button class="delete-todo"><i class="fas fa-trash-alt"></i></button>
            </div>
            `;

            projectsDiv.appendChild(todoDiv);

            
            todoDiv.querySelector(".delete-todo").addEventListener("click", () => {
                projectsDiv.removeChild(todoDiv);
            });

           
        todoDiv.querySelector(".edit-todo").addEventListener("click", () => {
                document.getElementById("title").value = title;
                document.getElementById("discription").value = description;
                document.getElementById("duedate").value = dueDate;
                document.getElementById("priority").value = priority;
                checklistUl.innerHTML = checklistItems.map(item => `<li>${item}</li>`).join("");
                projectsDiv.removeChild(todoDiv);
                todoForm.style.display = "block";
            });
            document.getElementById("add-todo").reset();
            checklistUl.innerHTML = "";
            todoForm.style.display = "none";
        } else {
            alert("Please fill in all required fields.");
        }
    });

    resetBtn.addEventListener("click", () => {
        document.getElementById("add-todo").reset();
        checklistUl.innerHTML = "";
    });
});
