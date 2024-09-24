class book {
  String?
      title; // null safety ?--> hoise it means that i will ensure that i'm going to provide a value later
  String? author;
  int? publication_year;
  int? pagesRead;

// static variable
  static int totalBooks = 0;

  //constructor
  book(this.title, this.author, this.publication_year, this.pagesRead) {}

  
}

void main() {
  print("ping!!");
}
