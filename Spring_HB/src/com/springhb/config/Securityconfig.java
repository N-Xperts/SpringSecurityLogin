package com.springhb.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.logout.LogoutFilter;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled=true,prePostEnabled=true)
public class Securityconfig extends WebSecurityConfigurerAdapter{

	@Autowired
	private DataSource dataSource;
	
	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder authentication) throws Exception
	{
		System.out.println("1");
		authentication.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery(getUserQuery())
		.authoritiesByUsernameQuery(getAuthoritiesQuery());
	}
	@Bean
	public AuthenticationManager authenticationManager() throws Exception
	{
		return super.authenticationManager();
	}
	
	@Override
	public void configure(WebSecurity security)
	{
		security.ignoring().antMatchers("/assets/**","/css/**","/font/**","/images/**","/js/**");
	}
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication()
                   .withUser("admin").password("darpan").roles("ADMIN");
	}
	
	@Override
	public void configure(HttpSecurity httpSecurity) throws Exception
	{System.out.println("2");
		
		httpSecurity.authorizeRequests().antMatchers("/login").anonymous();
		
		httpSecurity.authorizeRequests().antMatchers("/logout").anonymous();

		httpSecurity.authorizeRequests().antMatchers("/loginfail").anonymous();
		

		httpSecurity.authorizeRequests()
			.antMatchers("/**").access("hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')")
			.anyRequest().authenticated()
			.and().formLogin().loginPage("/login").loginProcessingUrl("/j_spring_security_check")
			.defaultSuccessUrl("/index")
			.failureUrl("/loginfail")
			.and().logout().logoutSuccessUrl("/login").permitAll()
			.deleteCookies("JSESSIONID").invalidateHttpSession(true)
			.and().exceptionHandling()
			.accessDeniedPage("/errorpage").and().csrf().disable();
		
		httpSecurity.sessionManagement().
					invalidSessionUrl("/login").
					maximumSessions(1);	
	}
	private String getUserQuery()
	{System.out.println("3");
		return "select userName, password, status from UserAccountModel where userName=?";
	}
	private String getAuthoritiesQuery()
	{System.out.println("4");
		return "select us.userName, ur.userRoleName from UserAccountModel us, UserRoleModel ur where ur.userName =?"; 
	}
	
	@SuppressWarnings("deprecation")
	@Bean
	public LogoutFilter logoutFilter() 
	{
		LogoutFilter filter = new LogoutFilter("/logout", new SecurityContextLogoutHandler());
		filter.setFilterProcessesUrl("/j_spring_security_logout");
		return filter;
	}
	


}
