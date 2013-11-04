package com.katz.test.pizza.repository;

import com.katz.test.pizza.domain.Pizza;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Pizza.class)
public interface PizzaRepository {
}
