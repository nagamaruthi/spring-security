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
			.withUser(users.username("chakri").password("password").roles("EMPLOYEE","MANAGERS"))
			.withUser(users.username("admin").password("password").roles("EMPLOYEE","ADMIN"));
	}

	/*
	 * To override default Login page from Spring 
	 * 
	*/
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/").hasRole("EMPLOYEE")
		.antMatchers("/leaders/**").hasRole("MANAGERS")
		.antMatchers("/systems/**").hasRole("ADMIN")
		.and()
		.formLogin()
			.loginPage("/showMyLoginPage")
			.loginProcessingUrl("/authenticateTheUser")
			.permitAll()
		.and()
		.logout().permitAll();
		
	}

	
	
}
