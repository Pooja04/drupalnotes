import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';

import { AppComponent } from './app.component';
import { BooksComponent } from './books/books.component';
import { BookService } from './booksservice/book.service';
import { PageNotFoundComponent } from './page-not-found/page-not-found.component';
import { BooksdetailComponent } from './booksdetail/booksdetail.component';
import { MultipleoutletComponent } from './multipleoutlet/multipleoutlet.component';
import { FirstoutletComponent } from './firstoutlet/firstoutlet.component';
import { SecondoutletComponent } from './secondoutlet/secondoutlet.component';
import { AuthGuard } from './auth.guard';
import { SecuredComponent } from './secured/secured.component';
import { UserService } from './user.service';
import { CandeactivateGuardService } from './candeactivate-guard.service';




@NgModule({
  declarations: [
    AppComponent,
    BooksComponent,
    PageNotFoundComponent,
    BooksdetailComponent,
    MultipleoutletComponent,
    FirstoutletComponent,
    SecondoutletComponent,
    SecuredComponent
  ],
  imports: [
    BrowserModule,
    RouterModule.forRoot([
    {
    	path : '',
    	redirectTo : '/books',
    	pathMatch : 'full'
    },
    {
    	path : 'books',
    	children: [
    {
      path : '',
      component : BooksComponent,
    },
    {
      path : ':name',
      component : BooksdetailComponent,
    },
    {
      path : ':id',
      children: [
      {
        path : '',
        component : BooksdetailComponent,
      },
      {
        path : 'prod',
        component : BooksdetailComponent,
      },]
    },

    ],
    },
    {
      path : 'multipleoutlet',
      component : MultipleoutletComponent,
      children : [
        {
          path : 'firstoutlet',
          component : FirstoutletComponent,
          outlet : 'firstchild'
        },
        {
          path : 'secondoutlet',
          component : SecondoutletComponent,
          outlet : 'secondchild'
        }
      ],
    },
    {
      path : 'securedcomponent',
      component : SecuredComponent,
      canActivate : [AuthGuard],
      canDeactivate : [CandeactivateGuardService]
    },
    {
    	path : '**',
    	component : PageNotFoundComponent,
    },    
    ]),
  ],
  providers: [BookService, AuthGuard, UserService, CandeactivateGuardService],
  bootstrap: [AppComponent]
})
export class AppModule { }
