class Book{
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBook = 0;

  Book(this.title,this.publicationYear,this.author,this.pagesRead){
    totalBook++;
  }
  void read(int pages){
    pagesRead+= pages;
  }

  String getTitle() => title;
  String getAuthor() => author;
  int getPublicationYear() => publicationYear;
  int getPageRead() => pagesRead;

  int getBookYear(){
    final currentBook = DateTime.now().year;
    return currentBook - publicationYear;
  }
}



void main(){
  Book Book1 = Book("Addison Wesley The Object Orient", 2009, "Matt A. Weisfeld", 347);
  Book Book2 = Book("A Game of Thrones", 1996, "George R. R. Martin", 694);
  Book Book3 = Book("The Lord of the Rings", 1995, "Henry J. R. R. Tolkien", 1077);
  Book Book4 = Book("Harry Potter", 1997, "J. K. Rowling", 223);
  print('\n');


  print('Book 1 : ${Book1.getTitle()} Book by ${Book1.getAuthor()}');
  print('Published in: ${Book1.getPublicationYear()}');
  print('Page Read: ${Book1.getPageRead()}');
  print('Book Age: ${Book1.getBookYear()}');
  print('\n');

  print('Book 2: ${Book2.getTitle()} Book by ${Book2.getAuthor()}');
  print('Published in: ${Book2.getPublicationYear()}');
  print('Page Read: ${Book2.getPageRead()}');
  print('Book Age: ${Book2.getBookYear()}');
  print('\n');

  print('Book 3: ${Book3.getTitle()} Book by ${Book3.getAuthor()}');
  print('Published in: ${Book3.getPublicationYear()}');
  print('Page Read: ${Book3.getPageRead()}');
  print('Book Age: ${Book3.getBookYear()}');
  print('\n');

  print('Book 4: ${Book4.getTitle()} Book by ${Book4.getAuthor()}');
  print('Published in: ${Book4.getPublicationYear()}');
  print('Page Read: ${Book4.getPageRead()}');
  print('Book Age: ${Book4.getBookYear()}');

  print('Total Book: ${Book.totalBook}');

}