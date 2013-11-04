// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.katz.test.pizza.domain;

import com.katz.test.pizza.domain.BaseDataOnDemand;
import com.katz.test.pizza.domain.Pizza;
import com.katz.test.pizza.domain.PizzaDataOnDemand;
import com.katz.test.pizza.repository.PizzaRepository;
import com.katz.test.pizza.service.PizzaService;
import java.math.BigDecimal;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect PizzaDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PizzaDataOnDemand: @Component;
    
    private Random PizzaDataOnDemand.rnd = new SecureRandom();
    
    private List<Pizza> PizzaDataOnDemand.data;
    
    @Autowired
    BaseDataOnDemand PizzaDataOnDemand.baseDataOnDemand;
    
    @Autowired
    PizzaService PizzaDataOnDemand.pizzaService;
    
    @Autowired
    PizzaRepository PizzaDataOnDemand.pizzaRepository;
    
    public Pizza PizzaDataOnDemand.getNewTransientPizza(int index) {
        Pizza obj = new Pizza();
        setName(obj, index);
        setPrice(obj, index);
        return obj;
    }
    
    public void PizzaDataOnDemand.setName(Pizza obj, int index) {
        String name = "name_" + index;
        obj.setName(name);
    }
    
    public void PizzaDataOnDemand.setPrice(Pizza obj, int index) {
        BigDecimal price = BigDecimal.valueOf(index);
        obj.setPrice(price);
    }
    
    public Pizza PizzaDataOnDemand.getSpecificPizza(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Pizza obj = data.get(index);
        Long id = obj.getId();
        return pizzaService.findPizza(id);
    }
    
    public Pizza PizzaDataOnDemand.getRandomPizza() {
        init();
        Pizza obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return pizzaService.findPizza(id);
    }
    
    public boolean PizzaDataOnDemand.modifyPizza(Pizza obj) {
        return false;
    }
    
    public void PizzaDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = pizzaService.findPizzaEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Pizza' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Pizza>();
        for (int i = 0; i < 10; i++) {
            Pizza obj = getNewTransientPizza(i);
            try {
                pizzaService.savePizza(obj);
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            pizzaRepository.flush();
            data.add(obj);
        }
    }
    
}
