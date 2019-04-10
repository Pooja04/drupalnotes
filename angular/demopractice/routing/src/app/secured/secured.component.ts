import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-secured',
  templateUrl: './secured.component.html',
  styleUrls: ['./secured.component.css']
})
export class SecuredComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }


canDeactivate(){
	return window.confirm("discard changes");
}
}
