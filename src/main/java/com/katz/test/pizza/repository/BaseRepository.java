package com.katz.test.pizza.repository;

import com.katz.test.pizza.domain.Base;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Base.class)
public interface BaseRepository {
}
