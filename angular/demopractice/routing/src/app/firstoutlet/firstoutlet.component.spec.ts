import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FirstoutletComponent } from './firstoutlet.component';

describe('FirstoutletComponent', () => {
  let component: FirstoutletComponent;
  let fixture: ComponentFixture<FirstoutletComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FirstoutletComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FirstoutletComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
