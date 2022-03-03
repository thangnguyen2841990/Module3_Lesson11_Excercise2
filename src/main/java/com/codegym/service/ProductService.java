package com.codegym.service;

import com.codegym.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();
    void Save(Product product);
    Product findById(int id);
    void update(int id, Product product);
    void remove(int id);
    Product findProductByName(String name);
}
