import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, CanActivateChild } from '@angular/router';
import { Observable } from 'rxjs/Observable';
import { UserService } from './user.service';

@Injectable()
export class AuthGuard implements CanActivate, CanActivateChild {
	constructor(private router: Router, private userservice: UserService){}
  canActivate(
    next: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean> | Promise<boolean> | boolean {

  	if(!this.userservice.getUserLoggedIn()){
  	console.log('u r not authorized');
  	this.router.navigate(['/login']);
  }
    return true;
  }


  canActivateChild() {
    console.log('checking child route access');
    return true;
  }
}
