import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SecondoutletComponent } from './secondoutlet.component';

describe('SecondoutletComponent', () => {
  let component: SecondoutletComponent;
  let fixture: ComponentFixture<SecondoutletComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SecondoutletComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SecondoutletComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
