import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PageBookmarksComponent } from './page-bookmarks.component';

describe('PageBookmarksComponent', () => {
  let component: PageBookmarksComponent;
  let fixture: ComponentFixture<PageBookmarksComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PageBookmarksComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PageBookmarksComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
