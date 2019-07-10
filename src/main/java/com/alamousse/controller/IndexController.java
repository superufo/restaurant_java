package com.alamousse.controller;

import com.alamousse.util.DateUtil;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Locale;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.beans.factory.annotation.Autowired;



import javax.servlet.http.HttpServletRequest;

/**
 * @author alamousse
 */
@Controller
@RequestMapping
public class IndexController {
    @Autowired
    private MessageSource messageSource;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping
    /*public String index(Model model) {
           return "home/index";
    }*/
    public String index(Model model) {
        logger.error("test index");
        return  "";
    }

    @RequestMapping(value = "/test",method = {RequestMethod.GET})
    public String test(Model model){
        logger.debug("This is a debug message");
        logger.info("This is an info message");
        logger.warn("This is a warn message");
        logger.error("This is an error message");

        String rq = DateUtil.getCurrentTime();
        System.out.println(rq);
        model.addAttribute("rq", rq);


        Locale locale = LocaleContextHolder.getLocale();
        System.out.println(locale);
        logger.debug("locale:",locale);
        model.addAttribute("hello", messageSource.getMessage("hello", null, locale));

        //model.addAttribute("user.username", MessageUtil.get("user.username"));
        return "test/test";
    }

    @ResponseBody
    @RequestMapping(value = "/testPost",method = {RequestMethod.POST})
    public String testpost(HttpServletRequest request){
        return request.getParameter("rq");
    }


}
