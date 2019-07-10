package com.alamousse.controller.console;

import com.alamousse.model.member.Member;
import com.alamousse.service.member.MemberService;
import com.alamousse.util.ReturnUtil;
import com.github.pagehelper.PageInfo;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

import java.util.Locale;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;

import com.alamousse.util.I18nUtil;


/**
 * @author alamousse
 */
@Controller
@RequestMapping("/console/member")
public class UserController {
    @Autowired
    private MessageSource messageSource;

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private MemberService memberService;

    @RequiresPermissions("member:index")
    @RequestMapping(value = "/index", method = {RequestMethod.GET})
    public String index(Model model) {
        Locale locale = LocaleContextHolder.getLocale();
        logger.debug("******************************* user.firstname", I18nUtil.get("user.firstname"));
        model.addAttribute("user.firstname", messageSource.getMessage("user.firstname", null, locale));

        return "console/member/index";
    }

    @RequiresPermissions("member:index")
    @RequestMapping(value = "/list", method = {RequestMethod.GET})
    @ResponseBody
    public ModelMap list(Member member) {
        Locale locale = LocaleContextHolder.getLocale();
        logger.debug("*******************************1111111111111111 locale",locale);

        //logger.debug("*******************************1111111111111111 user.firstname", I18nUtil.get("user.firstname"));

        ModelMap map = new ModelMap();
        List<Member> lists = memberService.getPageList(member);
        map.put("pageInfo", new PageInfo<Member>(lists));
        map.put("queryParam", member);
        return ReturnUtil.success("加载成功", map, null);
    }

}
