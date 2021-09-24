import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PageCurrentComponent } from './page-current.component';

describe('PageCurrentComponent', () => {
  let component: PageCurrentComponent;
  let fixture: ComponentFixture<PageCurrentComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PageCurrentComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PageCurrentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
