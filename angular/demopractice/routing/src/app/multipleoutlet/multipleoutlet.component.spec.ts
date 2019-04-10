import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MultipleoutletComponent } from './multipleoutlet.component';

describe('MultipleoutletComponent', () => {
  let component: MultipleoutletComponent;
  let fixture: ComponentFixture<MultipleoutletComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MultipleoutletComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MultipleoutletComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
