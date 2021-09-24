import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { SharedFooterComponent } from './shared-footer/shared-footer.component';
import { PageHomeComponent } from './page-home/page-home.component';
import { PageResourcesComponent } from './page-resources/page-resources.component';
import { PageCurrentComponent } from './page-current/page-current.component';
import { PageBookmarksComponent } from './page-bookmarks/page-bookmarks.component';

@NgModule({
  declarations: [
    AppComponent,
    SharedFooterComponent,
    PageHomeComponent,
    PageResourcesComponent,
    PageCurrentComponent,
    PageBookmarksComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
