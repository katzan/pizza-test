// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.katz.test.pizza.domain;

import com.katz.test.pizza.domain.Base;
import com.katz.test.pizza.domain.Pizza;
import com.katz.test.pizza.domain.Topping;
import java.math.BigDecimal;
import java.util.Set;

privileged aspect Pizza_Roo_JavaBean {
    
    public String Pizza.getName() {
        return this.name;
    }
    
    public void Pizza.setName(String name) {
        this.name = name;
    }
    
    public BigDecimal Pizza.getPrice() {
        return this.price;
    }
    
    public void Pizza.setPrice(BigDecimal price) {
        this.price = price;
    }
    
    public Set<Topping> Pizza.getToppings() {
        return this.toppings;
    }
    
    public void Pizza.setToppings(Set<Topping> toppings) {
        this.toppings = toppings;
    }
    
    public Base Pizza.getBase() {
        return this.base;
    }
    
    public void Pizza.setBase(Base base) {
        this.base = base;
    }
    
}