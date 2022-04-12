package com.dmt.config;

import javax.sql.DataSource;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.dmt.bean.DienThoaiBean;
import com.dmt.bean.KhachHangBean;
import com.dmt.bean.LoaiBean;
import com.dmt.bo.DienThoaiBo;
import com.dmt.bo.GioHangBo;
import com.dmt.bo.LoaiBo;
import com.dmt.dao.DienThoaiDao;
import com.dmt.dao.LoaiDao;



@Configuration
@ComponentScan("com.dmt.*") 
public class ApplicationContextConfig { 

    @Bean(name = "viewResolver")
    public InternalResourceViewResolver getViewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/view/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }
	@Bean
	public DienThoaiBean dienThoaibean() {
		return new DienThoaiBean();
	}

	@Bean
	public DienThoaiBo dienThoaiBo() {
		return new DienThoaiBo();
	}

	@Bean
	public DienThoaiDao dienThoaidao() {
		return new DienThoaiDao();
	}

	@Bean
	public MessageSource messageSource() {
		ReloadableResourceBundleMessageSource bundleMessageSource = new ReloadableResourceBundleMessageSource();
		bundleMessageSource.setBasename("classpath:messages");
		bundleMessageSource.setDefaultEncoding("utf-8");
		return bundleMessageSource;
	}



	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		dataSource.setUrl("jdbc:sqlserver://DESKTOP-RE8HTG2:1433;databaseName=QlPhone");
		dataSource.setUsername("sa");
		dataSource.setPassword("123");
		return dataSource;
	}

	@Bean
	public JdbcTemplate jdbcTemplate() {
		return new JdbcTemplate(dataSource());
	}

	@Bean
	public LoaiBean loaiBean() {
		return new LoaiBean();
	}

	@Bean
	public LoaiBo loaiBo() {
		return new LoaiBo();
	}

	@Bean
	public LoaiDao loaiDao() {
		return new LoaiDao();
	}
	@Bean KhachHangBean khachhangbean()
	{
		return new KhachHangBean();
	}



}