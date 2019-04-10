import { Component, OnInit } from '@angular/core';
import { Params, ActivatedRoute, Router } from '@angular/router';
import { BookService } from '../booksservice/book.service';
import { Book } from '../booksservice/books';

@Component({
  selector: 'app-booksdetail',
  templateUrl: './booksdetail.component.html',
  styleUrls: ['./booksdetail.component.css']
})
export class BooksdetailComponent implements OnInit {

  constructor(private bookservice: BookService, private route: ActivatedRoute, private router: Router ) { }

book: Book = new Book();

  ngOnInit() {
/*  this.route.params
  .subscribe((params: Params)=>{this.bookservice.getBook(+params['id'])
.then(book => this.book = book)
});*/

    this.route.params
  .subscribe((params: Params)=>{this.bookservice.getBookByName(params['name'])
.then(book => this.book = book)
});

  }
navigateextras;
delete(id: number){

	this.bookservice.deleteBook(id);


let navigateextras = {
	queryParams : {delete_book_id : id},
	fragment : 'anchor'
}

	this.router.navigate(['/books'],navigateextras);
}


}
