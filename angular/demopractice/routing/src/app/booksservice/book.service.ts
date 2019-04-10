import { Injectable } from '@angular/core';
import { Book } from './books';
import { BOOKS } from './mock-books';

@Injectable()
export class BookService {

  constructor() { }

  getBooks() {
        return Promise.resolve(BOOKS);
    }

  getBook(id: number){
        return this.getBooks()
            .then(books => books.find(book => book.id === id));
    }
  getBookByName(name: string){
        return this.getBooks()
            .then(books => books.find(book => book.name === name));
    }

  addBook(book:Book){
    this.getBooks().then(books => {
         let maxIndex = books.length - 1;
         let bookWithMaxIndex = books[maxIndex];
         book.id = bookWithMaxIndex.id + 1;
         books.push(book);}
    );
    }

  deleteBook(id: number){
    this.getBooks().then(books => {
        let book = books.find(ob => ob.id === id);
                    let bookIndex = books.indexOf(book);
                    books.splice(bookIndex, 1);}
    );
    }


}
