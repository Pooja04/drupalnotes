import { Injectable } from '@angular/core';

@Injectable()
export class UserService {
isUserLoggedIn;
  constructor() { 
	this.isUserLoggedIn = false;
  }

setUserLogin(){
	this.isUserLoggedIn = true;
}

getUserLoggedIn(){
	return this.isUserLoggedIn;
}



}
