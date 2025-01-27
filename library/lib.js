const myLibrary = [];

function Book(title, author, pages, read) {
  this.title = title;
  this.author = author;
  this.pages = pages;
  this.read = read;
}





Book.prototype.toggleRead = function() {
  this.read = !this.read;
};


function addBookToLibrary(book) {
  myLibrary.push(book);
  displayBooks();
}



function displayBooks() {
  const libraryDiv = document.getElementById('library');
  libraryDiv.innerHTML = '';

  for(var i = 0; i < myLibrary.length; i++) {
    var bookCard = createBookCard(myLibrary[i], i);
    libraryDiv.appendChild(bookCard);
  }
}
function removeBook(index) {
  myLibrary.splice(index, 1);
  displayBooks();
}


function toggleReadStatus(index) {
  myLibrary[index].toggleRead();
  displayBooks();
}


const modal = document.getElementById('modal');
const newBookBtn = document.getElementById('newBookBtn');
const bookForm = document.getElementById('bookForm');
const closeModalBtn = document.getElementById('closeModal');


newBookBtn.onclick = function() {
  modal.style.display = 'flex';
};


closeModalBtn.onclick = function() {
  modal.style.display = 'none';
};


bookForm.onsubmit = function(event) {
  event.preventDefault();

  var title = document.getElementById('title').value;
  var author = document.getElementById('author').value;
  var pages = document.getElementById('pages').value;
  var read = document.getElementById('read').checked;

  var newBook = new Book(title, author, pages, read);
  addBookToLibrary(newBook);

  bookForm.reset();
  modal.style.display = 'none';
};


window.onclick = function(event) {
  if (event.target === modal) {
    modal.style.display = 'none';
  }
};

function createBookCard(book, index) {
  var card = document.createElement('div');
  card.className = 'book-card';
  
  card.innerHTML = 
    '<h3>' + book.title + '</h3>' +
    '<p><strong>Author:</strong> ' + book.author + '</p>' +
    '<p><strong>Pages:</strong> ' + book.pages + '</p>' +
    '<div class="book-actions">' +
      '<button onclick="toggleReadStatus(' + index + ')" class="read-toggle">' +
        (book.read ? 'Read' : 'Not Read') +
      '</button>' +
      '<button onclick="removeBook(' + index + ')" class="delete-btn">Delete</button>' +
    '</div>';

  return card;
}
