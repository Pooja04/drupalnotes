import { TestBed, inject } from '@angular/core/testing';

import { CandeactivateGuardService } from './candeactivate-guard.service';

describe('CandeactivateGuardService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [CandeactivateGuardService]
    });
  });

  it('should be created', inject([CandeactivateGuardService], (service: CandeactivateGuardService) => {
    expect(service).toBeTruthy();
  }));
});
