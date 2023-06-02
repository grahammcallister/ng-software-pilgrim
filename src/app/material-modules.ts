import { NgModule } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatInputModule } from '@angular/material/input';
import { MatCardModule } from '@angular/material/card';
import { MatGridListModule} from '@angular/material/grid-list';

@NgModule({
    exports: [
        MatButtonModule,
        MatIconModule,
        MatInputModule,
        MatCardModule,
        MatGridListModule
    ]
})
export class MaterialModules {}