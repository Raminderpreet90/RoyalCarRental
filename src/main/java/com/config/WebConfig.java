package com.config;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.dao.CarDao;
import com.dao.CarDaoImpl;


@Configuration 
@EnableWebMvc
@ComponentScan(basePackages = { "com" })

public class WebConfig implements WebMvcConfigurer{
	@Autowired
	 DataSource dataSource;
	
	@Bean
	 public NamedParameterJdbcTemplate geNamedParameterJdbcTemplate(){
	  return new NamedParameterJdbcTemplate(dataSource);
	 }
	
	@Override
	 public void addResourceHandlers(ResourceHandlerRegistry registry) {
	  registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	 }
	@Bean
	public InternalResourceViewResolver resolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);      
		resolver.setPrefix("/WEB-INF/views/");        
			resolver.setSuffix(".jsp");        
			return resolver;   
			}
	
	
	@Bean
	DriverManagerDataSource getDataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/royalcarrent");
		ds.setUsername("root");
		ds.setPassword("rimmi");

		return ds;
	}
	@Bean
	public CarDao getCarDao() {
		return new CarDaoImpl(getDataSource());
	}

}
