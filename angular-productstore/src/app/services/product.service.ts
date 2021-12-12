import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { Product } from '../common/product';
import { ProductCategory } from '../common/product-category';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  private baseUrl = "http://localhost:8080/api/v1/products";
  private categoryUrl = "http://localhost:8080/api/v1/product-category";

  constructor(private httpClient: HttpClient) { }

  getProducts(theCategoryId: number): Observable<Product[]>{
    const searchUrl = `${this.baseUrl}/search/categoryid?id=${theCategoryId}`;
    return this.getProductsList(searchUrl);
  }

  getProductsPaginate(theCategoryId: number, currentPage: number, pageSize: number): Observable<GetResponseProducts>{
    const searchUrl = `${this.baseUrl}/search/categoryid?id=${theCategoryId}&page=${currentPage}&size=${pageSize}`;
    return this.httpClient.get<GetResponseProducts>(searchUrl);
  }

  getProductCategories(): Observable<ProductCategory[]>{
    return this.httpClient.get<GetResponseProductCategory>(this.categoryUrl).pipe(
      map(response => response._embedded.productCateogry)
    );
  }

  searchProducts(keyword: string, currentPage: number, pageSize: number): Observable<GetResponseProducts>{
    const searchUrl = `${this.baseUrl}/search/searchbykeyword?name=${keyword}&page=${currentPage}&size=${pageSize}`;
    return this.httpClient.get<GetResponseProducts>(searchUrl);
  }

  private getProductsList(searchUrl: string): Observable<Product[]> {
    return this.httpClient.get<GetResponseProducts>(searchUrl).pipe(
      map(response => response._embedded.products)
    );
  }

  get(productId: number): Observable<Product> {
    const productDetailsUrl = `${this.baseUrl}/${productId}`;
    return this.httpClient.get<Product>(productDetailsUrl);
  }
}

interface GetResponseProducts{
  _embedded: {
    products: Product[];
  },
  page: {
    
    size: number,
    
    totalElements: number,
    
    totalPages: number,
   
    number: number
  }
}

interface GetResponseProductCategory{
  _embedded: {
    productCateogry: ProductCategory[];
  }
}
