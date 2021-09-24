import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AppComponent } from './app.component';
import { PageHomeComponent } from './page-home/page-home.component';
import { PageResourcesComponent } from './page-resources/page-resources.component';
import { PageBookmarksComponent } from './page-bookmarks/page-bookmarks.component';
import { PageCurrentComponent } from './page-current/page-current.component';

const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  { path: 'home', component: PageHomeComponent },
  { path: 'resources', component: PageResourcesComponent },
  { path: 'bookmarks', component: PageBookmarksComponent },
  { path: 'current', component: PageCurrentComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
