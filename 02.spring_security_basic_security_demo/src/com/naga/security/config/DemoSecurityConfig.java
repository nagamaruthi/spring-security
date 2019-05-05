package com.naga.security.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class 
	DemoSecurityConfig 
extends 
	WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		UserBuilder users	=	User.withDefaultPasswordEncoder();
		auth.inMemoryAuthentication()
			.withUser(users.username("naga").password("password").roles("EMPLOYEE"))
			.withUser(users.username("chakri").password("password").roles("EMPLOYEE"))
			.withUser(users.username("admin").password("password").roles("ADMIN"));
	}

	
}
