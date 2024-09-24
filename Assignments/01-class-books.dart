class book {
  String?
      title; // null safety ?--> hoise it means that it can be null or it can be String
  String? author;
  int? publication_year;
  int? pagesRead;

// static variable
  static int totalBooks = 0;

  int? BookIndex;
  //constructor
  book(this.title, this.author, this.publication_year, this.pagesRead) {
    totalBooks++;
    BookIndex = totalBooks;
  }

  //methods
  int read(int pages) {
    return pagesRead = pagesRead! +
        pages; // Null safety ! -->> i will ensure that i'm going to provide a value later
  }

  int getPagesRead() {
    return pagesRead!;
  }

  String getTitle() {
    return title!;
  }

  String getAuthor() {
    return author!;
  }

  int getPublicationYear() {
    return publication_year!;
  }

  int getBookAge() {
    return DateTime.now().year - publication_year!;
  }
}

void main() {
  //OBJECT CREATING
  var book1 = book('Flutter in Action', 'Eric Windmill', 2020, 10);
  var book2 = book('Building Games with Flutter', 'Paul Teale', 2022, 30);
  var book3 = book('THE MAGIC OF THINKING BIG', 'David J. Schwartz', 1959, 10);

// new more pages that someone read now , it will add to the whole
  book1.read(20);
  book2.read(40);
  book3.read(42);

  print("\nBook no ${book1.BookIndex}. : Name of the book-->  "
      "${book1.getTitle()}"
      " by "
      "${book1.getAuthor()}"
      ", first published at ${book1.getPublicationYear()}, I have read: ${book1.getPagesRead()} Pages, Book Age:${book1.getBookAge()} years");


  print("\nBook no ${book2.BookIndex}. : Name of the book-->  "
      "${book2.getTitle()}"
      " by "
      "${book2.getAuthor()}"
      ", first published at ${book2.getPublicationYear()}, I have read: ${book2.getPagesRead()} Pages, Book Age:${book2.getBookAge()} years");

      
  print("\nBook no ${book3.BookIndex}. : Name of the book-->  "
      "${book3.getTitle()}"
      " by "
      "${book3.getAuthor()}"
      ", first published at ${book3.getPublicationYear()}, I have read: ${book3.getPagesRead()} Pages, Book Age:${book3.getBookAge()} years");
}
