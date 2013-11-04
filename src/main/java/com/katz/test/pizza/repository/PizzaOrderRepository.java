package com.katz.test.pizza.repository;

import com.katz.test.pizza.domain.PizzaOrder;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = PizzaOrder.class)
public interface PizzaOrderRepository {
}
