
         
          const myLibrary = [];

// Book constructor
          class Book {
    constructor(title, author, pages, isRead) {
        this.title = title;
        this.author = author;
        this.pages = pages;
        this.isRead = isRead;
    }

    
    toggleReadStatus() {
        this.isRead = !this.isRead;
    }
}


          function addBookToLibrary(title, author, pages, isRead) {
          const book = new Book(title, author, pages, isRead);
          myLibrary.push(book);
          displayBooks(); 
}


         function removeBook(index) {
         myLibrary.splice(index, 1);
         displayBooks(); 
}


function displayBooks() {
    const libraryContainer = document.getElementById('library-container');
    libraryContainer.innerHTML = ''; // Clear current display

    myLibrary.forEach((book, index) => {
        const bookCard = document.createElement('div');
        bookCard.classList.add('book-card');
        bookCard.setAttribute('data-index', index);

        bookCard.innerHTML = `
            <h3>${book.title}</h3>
            <p>Author: ${book.author}</p>
            <p>Pages: ${book.pages}</p>
            <p>Status: ${book.isRead ? 'Read' : 'Not Read'}</p>
            <button onclick="removeBook(${index})">Remove</button>
            <button onclick="toggleRead(${index})">Toggle Read Status</button>
        `;

        libraryContainer.appendChild(bookCard);
    });
}


function toggleRead(index) {
    myLibrary[index].toggleReadStatus();
    displayBooks(); 
}


function handleNewBookSubmit(event) {
    event.preventDefault();

    const title = document.getElementById('title').value;
    const author = document.getElementById('author').value;
    const pages = document.getElementById('pages').value;
    const isRead = document.getElementById('isRead').checked;

    addBookToLibrary(title, author, pages, isRead);


    event.target.reset();
    document.getElementById('form-container').style.display = 'none';
}


document.addEventListener('DOMContentLoaded', () => {
    displayBooks();

    
    const openFormBtn = document.getElementById('open-form-btn');
    const formContainer = document.getElementById('form-container');
    openFormBtn.addEventListener('click', () => {
        formContainer.style.display = formContainer.style.display === 'none' ? 'block' : 'none';
    });

    const newBookForm = document.getElementById('new-book-form');
    if (newBookForm) {
        newBookForm.addEventListener('submit', handleNewBookSubmit);
    }
});

         




         

         

         



          
         




















    
    
    



