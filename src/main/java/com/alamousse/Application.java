package com.alamousse;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import tk.mybatis.spring.annotation.MapperScan;

//import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
//import org.springframework.web.servlet.i18n.SessionLocaleResolver;
//import org.springframework.context.annotation.Bean;
//import org.springframework.web.servlet.*;
//import java.util.Locale;

/**
 * SpringBoot启动核心
 * @author alamousse
 */
@SpringBootApplication
@EnableConfigurationProperties
@EnableTransactionManagement
@MapperScan("com.alamousse.mapper")
public class Application {
    public static void main(String[] args){
        SpringApplication.run(Application.class, args);
    }

//    /**
//     * 默认解析器 其中locale表示默认语言
//     */
//    @Bean
//    public LocaleResolver localeResolver() {
//        SessionLocaleResolver localeResolver = new SessionLocaleResolver();
//        localeResolver.setDefaultLocale(Locale.US);
//        return localeResolver;
//    }
//
//    /**
//     * 默认拦截器 其中lang表示切换语言的参数名
//     */
//    @Bean
//    public WebMvcConfigurer localeInterceptor() {
//        return new WebMvcConfigurer() {
//            @Override
//            public void addInterceptors(InterceptorRegistry registry) {
//                LocaleChangeInterceptor localeInterceptor = new LocaleChangeInterceptor();
//                localeInterceptor.setParamName("lang");
//                registry.addInterceptor(localeInterceptor);
//            }
//        };
//    }
}
