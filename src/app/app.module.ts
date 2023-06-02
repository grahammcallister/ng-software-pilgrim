import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { SharedFooterComponent } from './shared-footer/shared-footer.component';
import { PageHomeComponent } from './page-home/page-home.component';
import { PageResourcesComponent } from './page-resources/page-resources.component';
import { PageCurrentComponent } from './page-current/page-current.component';
import { PageBookmarksComponent } from './page-bookmarks/page-bookmarks.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MaterialModules } from './material-modules';

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
    BrowserAnimationsModule,
    MaterialModules
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
