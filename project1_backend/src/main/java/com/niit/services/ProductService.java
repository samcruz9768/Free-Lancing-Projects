package com.niit.services;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.Product;

public interface ProductService {
List<Product> getAllProducts();
List<Category> getAllCategories();
void saveOrUpdateProduct(Product product);
Product getProduct(int id);
void deleteProduct(int id);

}
