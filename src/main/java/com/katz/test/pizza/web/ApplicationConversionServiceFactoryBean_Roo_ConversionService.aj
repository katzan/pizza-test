// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.katz.test.pizza.web;

import com.katz.test.pizza.domain.Base;
import com.katz.test.pizza.domain.Pizza;
import com.katz.test.pizza.domain.PizzaOrder;
import com.katz.test.pizza.domain.PizzaOrderPk;
import com.katz.test.pizza.domain.Topping;
import com.katz.test.pizza.service.BaseService;
import com.katz.test.pizza.service.PizzaOrderService;
import com.katz.test.pizza.service.PizzaService;
import com.katz.test.pizza.service.ToppingService;
import com.katz.test.pizza.web.ApplicationConversionServiceFactoryBean;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    BaseService ApplicationConversionServiceFactoryBean.baseService;
    
    @Autowired
    PizzaService ApplicationConversionServiceFactoryBean.pizzaService;
    
    @Autowired
    PizzaOrderService ApplicationConversionServiceFactoryBean.pizzaOrderService;
    
    @Autowired
    ToppingService ApplicationConversionServiceFactoryBean.toppingService;
    
    public Converter<Base, String> ApplicationConversionServiceFactoryBean.getBaseToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.katz.test.pizza.domain.Base, java.lang.String>() {
            public String convert(Base base) {
                return new StringBuilder().append(base.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Base> ApplicationConversionServiceFactoryBean.getIdToBaseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.katz.test.pizza.domain.Base>() {
            public com.katz.test.pizza.domain.Base convert(java.lang.Long id) {
                return baseService.findBase(id);
            }
        };
    }
    
    public Converter<String, Base> ApplicationConversionServiceFactoryBean.getStringToBaseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.katz.test.pizza.domain.Base>() {
            public com.katz.test.pizza.domain.Base convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Base.class);
            }
        };
    }
    
    public Converter<Pizza, String> ApplicationConversionServiceFactoryBean.getPizzaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.katz.test.pizza.domain.Pizza, java.lang.String>() {
            public String convert(Pizza pizza) {
                return new StringBuilder().append(pizza.getName()).append(' ').append(pizza.getPrice()).toString();
            }
        };
    }
    
    public Converter<Long, Pizza> ApplicationConversionServiceFactoryBean.getIdToPizzaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.katz.test.pizza.domain.Pizza>() {
            public com.katz.test.pizza.domain.Pizza convert(java.lang.Long id) {
                return pizzaService.findPizza(id);
            }
        };
    }
    
    public Converter<String, Pizza> ApplicationConversionServiceFactoryBean.getStringToPizzaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.katz.test.pizza.domain.Pizza>() {
            public com.katz.test.pizza.domain.Pizza convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Pizza.class);
            }
        };
    }
    
    public Converter<PizzaOrder, String> ApplicationConversionServiceFactoryBean.getPizzaOrderToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.katz.test.pizza.domain.PizzaOrder, java.lang.String>() {
            public String convert(PizzaOrder pizzaOrder) {
                return new StringBuilder().append(pizzaOrder.getName()).append(' ').append(pizzaOrder.getAddress()).append(' ').append(pizzaOrder.getTotal()).append(' ').append(pizzaOrder.getDeliveryDate()).toString();
            }
        };
    }
    
    public Converter<PizzaOrderPk, PizzaOrder> ApplicationConversionServiceFactoryBean.getIdToPizzaOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<com.katz.test.pizza.domain.PizzaOrderPk, com.katz.test.pizza.domain.PizzaOrder>() {
            public com.katz.test.pizza.domain.PizzaOrder convert(com.katz.test.pizza.domain.PizzaOrderPk id) {
                return pizzaOrderService.findPizzaOrder(id);
            }
        };
    }
    
    public Converter<String, PizzaOrder> ApplicationConversionServiceFactoryBean.getStringToPizzaOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.katz.test.pizza.domain.PizzaOrder>() {
            public com.katz.test.pizza.domain.PizzaOrder convert(String id) {
                return getObject().convert(getObject().convert(id, PizzaOrderPk.class), PizzaOrder.class);
            }
        };
    }
    
    public Converter<Topping, String> ApplicationConversionServiceFactoryBean.getToppingToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.katz.test.pizza.domain.Topping, java.lang.String>() {
            public String convert(Topping topping) {
                return new StringBuilder().append(topping.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Topping> ApplicationConversionServiceFactoryBean.getIdToToppingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.katz.test.pizza.domain.Topping>() {
            public com.katz.test.pizza.domain.Topping convert(java.lang.Long id) {
                return toppingService.findTopping(id);
            }
        };
    }
    
    public Converter<String, Topping> ApplicationConversionServiceFactoryBean.getStringToToppingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.katz.test.pizza.domain.Topping>() {
            public com.katz.test.pizza.domain.Topping convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Topping.class);
            }
        };
    }
    
    public Converter<String, PizzaOrderPk> ApplicationConversionServiceFactoryBean.getJsonToPizzaOrderPkConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.katz.test.pizza.domain.PizzaOrderPk>() {
            public PizzaOrderPk convert(String encodedJson) {
                return PizzaOrderPk.fromJsonToPizzaOrderPk(new String(Base64.decodeBase64(encodedJson)));
            }
        };
    }
    
    public Converter<PizzaOrderPk, String> ApplicationConversionServiceFactoryBean.getPizzaOrderPkToJsonConverter() {
        return new org.springframework.core.convert.converter.Converter<com.katz.test.pizza.domain.PizzaOrderPk, java.lang.String>() {
            public String convert(PizzaOrderPk pizzaOrderPk) {
                return Base64.encodeBase64URLSafeString(pizzaOrderPk.toJson().getBytes());
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getBaseToStringConverter());
        registry.addConverter(getIdToBaseConverter());
        registry.addConverter(getStringToBaseConverter());
        registry.addConverter(getPizzaToStringConverter());
        registry.addConverter(getIdToPizzaConverter());
        registry.addConverter(getStringToPizzaConverter());
        registry.addConverter(getPizzaOrderToStringConverter());
        registry.addConverter(getIdToPizzaOrderConverter());
        registry.addConverter(getStringToPizzaOrderConverter());
        registry.addConverter(getToppingToStringConverter());
        registry.addConverter(getIdToToppingConverter());
        registry.addConverter(getStringToToppingConverter());
        registry.addConverter(getJsonToPizzaOrderPkConverter());
        registry.addConverter(getPizzaOrderPkToJsonConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
