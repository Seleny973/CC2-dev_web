import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { DefaultTemplateComponent } from './templates/default-template/default-template.component';
import { SecondaryTemplateComponent } from './templates/secondary-template/secondary-template.component';
import { HomeComponent } from './pages/home/home.component';
import { AboutComponent } from './pages/about/about.component';
import { LoginComponent } from './pages/login/login.component';
import { ProfilComponent } from './pages/profil/profil.component';

const routes: Routes = [
  {
    path: '',
    component: DefaultTemplateComponent,
    children: [
      { path: '', component: HomeComponent },
      { path: 'about', component: AboutComponent }
    ]
  },
  {
    path: 'login',
    component: SecondaryTemplateComponent,
    children: [
      { path: '', component: LoginComponent }
    ]
  },
  {
    path: 'profil',
    component: SecondaryTemplateComponent,
    children: [
      { path: '', component: ProfilComponent }
    ]
  },
  { path: '**', redirectTo: '' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }