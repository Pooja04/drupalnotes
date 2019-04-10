import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BooksdetailComponent } from './booksdetail.component';

describe('BooksdetailComponent', () => {
  let component: BooksdetailComponent;
  let fixture: ComponentFixture<BooksdetailComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BooksdetailComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BooksdetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
