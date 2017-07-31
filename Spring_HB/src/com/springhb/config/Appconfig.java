package com.springhb.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.mvc.WebContentInterceptor;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages={"com.springhb"})
@EnableWebMvc
@Import({Securityconfig.class})
@EnableGlobalMethodSecurity(securedEnabled=true,proxyTargetClass=true)
public class Appconfig extends WebMvcConfigurerAdapter {

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
	    registry.addViewController("/").setViewName("/login");
	}
  
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry)
	{
		registry.addResourceHandler("/resource/**").addResourceLocations("/resource/**");
        registry.addResourceHandler("/assets/**").addResourceLocations("/assets/**");
        registry.addResourceHandler("/css/**").addResourceLocations("/css/**");
        registry.addResourceHandler("/font/**").addResourceLocations("/font/**");
        registry.addResourceHandler("/images/**").addResourceLocations("/images/**");
        registry.addResourceHandler("/js/**").addResourceLocations("/js/**");
	}
	public void configureDefaultServlet(DefaultServletHandlerConfigurer configurer)
	{
		configurer.enable();
	}
	@Bean
	public InternalResourceViewResolver ViewResolver()
	{
		InternalResourceViewResolver bean=new InternalResourceViewResolver();
		bean.setPrefix("/WEB-INF/views/");
		bean.setSuffix(".jsp");
		return bean;
	}
	
	@Bean(name="multipartResolver")
	public CommonsMultipartResolver multipartResolver()
	{
		return new CommonsMultipartResolver();
	}
	
	@Bean(name="messageSource")
	public MessageSource messageSource() {
        ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
        messageSource.setBasename("classpath:messages");
        messageSource.setDefaultEncoding("UTF-8");
        return messageSource;
    }
	
	@Bean
	public WebContentInterceptor webContentInterceptor()
	{
		WebContentInterceptor interceptor=new WebContentInterceptor();
		interceptor.setCacheSeconds(0);
		interceptor.setUseExpiresHeader(false);
		interceptor.setUseCacheControlHeader(true);
		interceptor.setUseCacheControlNoStore(true);
		return interceptor;
	}
	
	
	
	
}
