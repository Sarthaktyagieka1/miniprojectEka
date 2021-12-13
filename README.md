# miniprojectEka

# AngularProductstore

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 8.3.19.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Steps for Execution

First you need to open the angular-productstore and spring-productstore folder in two different IDE's
Then we need to install the node modules in our angular-productstore folder for which we write the command "npm install".

Then you need to create a database i.e springbootapps and USER:- root PASSWORD:- root.
(CREATE DATABASE springbootapps;
CREATE USER 'root'@'localhost' IDENTIFIED BY 'root';
GRANT ALL ON springbootapps.* to 'root'@'localhost';)

Then execute the queries which are given in database queries folder inside MYSQL WORKBENCH.

After that you need the execute the onlineProductStoreApplication.java which is present in spring-productstore folder.
Try to execute it by using "ng serve" in the terminal. If any error occurs use "ng update" in the terminal , then try using "ng serve" after compilation you need to navigate to `http://localhost:4200/`.

