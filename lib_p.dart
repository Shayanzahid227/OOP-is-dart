void main() {
  ///
  /// book class call
  ///
  final book1 = Book('The Forty Rules of Love', 'Elif Shafak', '5123456', true);
  final Book2 = Book('Atomic Habits', 'James Clear', '1234567', false);
  final Book3 = Book('1984', 'George Orwell', '9876543', false);
  // final Book4 = Book('The Alchemist', 'Paulo Coelho', '7654321', false);
  // final Book5 = Book('To Kill a Mockingbird', 'Harper Lee', '3456789', true);

  ///
  ///. library class call
  ///
  final lib = Library();
  lib.addBook(book1);
  lib.addBook(Book2);
  lib.addBook(Book3);

  ///
  ///. all those which books are available right now
  ///
  lib.listAllBooks();

  ///
  ///. member class call
  ///
  Member member1 = Member(name: 'shayanZahid', memberId: 4619);
  Member member2 = Member(name: 'NumanZahid', memberId: 6392);
  lib.loanBooks(member1, book1);

  ///
  ///. again show all books that which books are given to some one
  ///
  lib.ListAllLoansBooks();
}

///
/// book class
///
class Book {
  String? title;
  String? author;
  String? isbn;
  bool? isAvailable;
  Book(this.title, this.author, this.isbn, this.isAvailable);
}

///
///  member class
///
class Member {
  String? name;
  int? memberId;
  Member({this.name, this.memberId});
}

///
///  loan class to whom and which book was given
///
class Loan {
  Book book; // class Book and it's object book
  Member member; // Member class and it's object member
  DateTime loaDate; // default in dart
  DateTime? returnDate;
  Loan({
    // make this required because it is important and must not be null to identify whom and which book was given
    required this.book,
    required this.member,
    required this.loaDate,
    this.returnDate,
  });
  // when book in returned then make it's availability true
  void returnBook() {
    returnDate = DateTime.now();
    book.isAvailable = true; // make it true
  }
}

///
///  library class
///
///
///  this same logic we can also use in making our own query like when
///  there are events app and we want to get all events or get all events of a particular user or particular type like party,hiking etc
///
///
class Library {
  List<Book> books =
      []; // all books.     and.     we also access loan book and loan class
  List<Loan> loanBooksList =
      []; // all those books which are given to readers    and.     we also access loan book and loan class
  // parameter is object of book
  void addBook(Book book) {
    books.add(book);
  }

  ///. list all books
  void listAllBooks() {
    int ind = 0; // ✅ Declare outside
    books.forEach((i) {
      ind++; // ✅ Increment with each iteration
      print(
        "Book details ${ind}:\nTitle: ${i.title} Author: ${i.author} ISBN:${i.isbn} Available: ${i.isAvailable}\n****************************************************************************************************",
      );
    });
  }

  ///
  ///. now list those books which are loaned mean given to someone
  ///
  void ListAllLoansBooks() {
    int ind = 0;
    print('--list of all loans books');
    loanBooksList.forEach((i) {
      ind++;
      print(
        "loan book ${ind}:\n title: ${i.book.title}. Author: ${i.book.author}. ISBN: ${i.book.isbn}. isAvailable${i.book.isAvailable} Given to: ${i.member.name}. Id: ${i.member.memberId}\n*************************************************************************************************************************************",
      );
    });
  }

  ///.

  ///
  ///
  void loanBooks(Member member, Book book) {
    // to give book to someone first check is it available or not
    if (book.isAvailable == true) {
      book.isAvailable = false; // mean given to someone
      loanBooksList.add(
        (Loan(book: book, member: member, loaDate: DateTime.now())),
      );
    } else {
      print("sorry ${book.title} is not available ");
    }
  }
}
