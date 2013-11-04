package com.katz.test.pizza.repository;

import com.katz.test.pizza.domain.Topping;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Topping.class)
public interface ToppingRepository {
}
