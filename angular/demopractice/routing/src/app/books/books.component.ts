import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { BookService } from '../booksservice/book.service';
import { Book } from '../booksservice/books';
import 'rxjs/add/operator/map';


@Component({
  selector: 'app-books',
  templateUrl: './books.component.html',
  styleUrls: ['./books.component.css']
})
export class BooksComponent implements OnInit {

  constructor(private bookservice: BookService, private router: Router, private route: ActivatedRoute) { }

books: Book[] = [];

  getBooklist(): void {
    this.bookservice.getBooks().then(books => this.books = books);
  }

deleteBookId;
token;

  ngOnInit() {
  this.getBooklist();

  this.deleteBookId = this.route
                      .queryParams
                      .map(params => params['delete_book_id'] || 'None');


     this.token = this.route
                      .fragment
                      .map(fragment => fragment || 'None');
  }

  onSelect(name: string){
this.router.navigate(['/books',name]);

  }




}
