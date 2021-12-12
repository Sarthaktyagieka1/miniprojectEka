import { Component, OnInit } from '@angular/core';
import { Product } from '../../common/product';
import { ProductService } from '../../services/product.service';
import { ActivatedRoute } from '@angular/router';
import { NgbPaginationConfig } from '@ng-bootstrap/ng-bootstrap';
import { CartService } from 'src/app/services/cart.service';
import { CartItem } from 'src/app/common/cart-item';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-grid.component.html',
  styleUrls: ['./product-list.component.css'],
  providers: [NgbPaginationConfig]
})
export class ProductListComponent implements OnInit {

  products: Product[] = [];
  currentCategoryId: number = 1;
  previousCategoryId: number = 1;
  searchMode: boolean = false;
  
  
  currentPage: number = 1;
  pageSize: number = 5;
  totalRecords: number = 0;

  constructor(private _productService: ProductService,
              private _activatedRoute: ActivatedRoute,
              private _cartService: CartService,
              config: NgbPaginationConfig) {
                config.boundaryLinks = true;
                config.maxSize = 3;
              }

  ngOnInit() {
    this._activatedRoute.paramMap.subscribe(()=>{
      this.listProducts();
    })
  }

  /*client side paging
  pageClick(pageOfItems: Array<Book>) {
    // update current page of items
    this.pageOfItems = pageOfItems;
  } */

  listProducts(){
    this.searchMode = this._activatedRoute.snapshot.paramMap.has('keyword');

    if(this.searchMode){
      //do search work
      this.handleSearchProducts();
    }else {
      //display books based on category
      this.handleListProducts();
    }
  }

  handleListProducts(){
    const hasCategoryId: boolean = this._activatedRoute.snapshot.paramMap.has('id');
    
    if (hasCategoryId) {
      this.currentCategoryId = +this._activatedRoute.snapshot.paramMap.get('id');
    }else {
      this.currentCategoryId = 1;
    }

    //setting up the page number to 1
    //if user navigates to other category
    if (this.previousCategoryId != this.currentCategoryId) {
      this.currentPage = 1;
    }

    this.previousCategoryId = this.currentCategoryId;

    console.log('current page size', this.currentPage-1);
    
    this._productService.getProductsPaginate(this.currentCategoryId, 
                                        this.currentPage - 1, 
                                        this.pageSize)
                                        .subscribe(this.processResult());
  }

  handleSearchProducts(){
    const keyword: string = this._activatedRoute.snapshot.paramMap.get('keyword');

    this._productService.searchProducts(keyword,
                                  this.currentPage - 1,
                                  this.pageSize)
                                  .subscribe(this.processResult());
  }

  //client side paging and server side paging
  updatePageSize(pageSize: number) {
    this.pageSize = pageSize;
    this.currentPage = 1;
    this.listProducts();
  }

  processResult(){
    return data => {
      this.products = data._embedded.products;
      this.currentPage = data.page.number + 1;
      this.totalRecords = data.page.totalElements;
      this.pageSize = data.page.size;
    }
  }

  addToCart(product: Product){
    console.log(`product name: ${product.name}, and price: ${product.unitPrice}`);
    const cartItem = new CartItem(product);
    this._cartService.addToCart(cartItem);
  }

}
