package com.micana.MicanasStore.services;


import com.micana.MicanasStore.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(++ID,"God of war","SHUT UP SON",5000,"Action-adventure"," Sony Interactive Entertainment"));
        products.add(new Product(++ID,"Dota2","PERVIY SKILL AND TRETYI",0,"MOBA","Valve"));
    }
//sdsd
    public List<Product> listProducts() { return products; }

    public void saveProduct(Product product) {
        product.setId(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id) {
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        for (Product product : products) {
            if (product.getId().equals(id)) return product;
        }
        return null;
    }
}
